<?php

/**
 * File FactTrans
 *
 * @author ssilk (Alex Aulbach)
 * @date   2014-05-18
 */


/**
 * Class FactTrans
 *
 * Handles Factorios language-config files and can find translations for a given name.
 *
 * For setup, it needs one ore more tranlation-basedirs (in in the application path); for example:
 *
 *   data/base/locale
 *   data/core/locale
 *
 * It assumes this directory structure:
 *
 *   ch/
 *      autoplace-control-names.cfg
 *      damage-type-names.cfg
 *      ...
 *   cz/
 *      ...
 *      entity-names.cfg
 *      item-names.cfg
 *      ...
 *    da/
 *      ...
 *    de/
 *      ...
 *    en/
 *      ...
 *
 * The *.cfg-files are the cfgIni-Files or one translation. Inside that translations are the sections (it's a ini-file).
 */
class FactTrans {

    /**
     * The default language is English.
     */
    const DEFAULT_LANGUAGE = 'en';

    /**
     * The cache for the read translation-files
     *
     * @var array
     */
    protected $_translationCache = array();

    /**
     * All found languages.
     *
     * Filled after initialization
     *
     * @var array
     */
    protected $_availableLanguages = array();

    /**
     * All paths of all language-cfg-files.
     *
     * Filled after initialization.
     *
     * @var array
     */
    protected $_inifilesPerLanguage = array();


    /**
     * Initialize this class with unlimited numbers of translation-basedirs.
     *
     * It walks through the directories structure and remembers languages and config-paths.
     *
     * @param array $translationBasedirs
     * @throws InvalidArgumentException
     */
    public function __construct(array $translationBasedirs)
    {
        if (!count($translationBasedirs)) {
            throw new InvalidArgumentException('No translations given. I give up here');
        }

        foreach ($translationBasedirs as $translationBasedir) {
            $translationBasedir = rtrim($translationBasedir, '/'); // remove trailing '/'

            // construct new
            $languagesDirHandle = dir($translationBasedir);

            // read languages subdir
            while (false !== ($language = $languagesDirHandle->read())) {
                if (!preg_match('/^\w\w$/', $language)) continue; // jump over . or .. etc.

                if (!in_array($language, $this->_availableLanguages)) {
                    $this->_availableLanguages[] = $language;
                }

                $inifilesDirHandle = dir($translationBasedir . DIRECTORY_SEPARATOR . $language);

                // read ini-files per language
                while (false !== ($inifile = $inifilesDirHandle->read())) {
                    if (!preg_match('/.*.cfg$/', $inifile)) continue; // read only *.cfg-files

                    $cfgIni = preg_replace('/.cfg$/', '', $inifile);

                    // not handling equal named ini-files in different basedirs per language yet!
                    if (!empty($this->_inifilesPerLanguage[$language][$cfgIni])) {
                        throw new InvalidArgumentException("Cannot set two identical named inifiles (from different basedirs) for lang: '$language', ini: '$cfgIni'");
                    }
                    $this->_inifilesPerLanguage[$language][$cfgIni] = $translationBasedir . DIRECTORY_SEPARATOR . $language . DIRECTORY_SEPARATOR . $inifile;
                }
            }
        }
    }


    /**
     * Returns a list of found languages
     *
     *   0 => 'de'
     *   1 => 'en'
     *   ...
     *
     * @return array
     */
    public function getAvailableLanguages()
    {
        return $this->_availableLanguages;
    }

    /**
     * Get the translation for this language in this cfgIni at section with this translationKey or the fallback or just the translation-key.
     *
     * If a translation for a translation-key is not found it first looks, if the same translation is available as
     * default-language (=en) and if that also not exists it returns the translation-key embraced with "<'...'>"
     *
     * @param $lang
     * @param $cfgIni
     * @param $section
     * @param $translationKey
     * @return string
     */
    public function getFallbackLDefaultOrKey($lang, $translationKey, $cfgIni, $section)
    {
        $translation = $this->getFallbackDefault($lang, $translationKey, $cfgIni, $section);

        if (empty($translation)) {
            $translation = "<'{$translationKey}'>";
        }

        return $translation;
    }

    /**
     * Get the translation for this language in this cfgIni at section with this translationKey or the fallback-language.
     *
     * @param $lang
     * @param $cfgIni
     * @param $section
     * @param $translationKey
     * @return null|string
     */
    public function getFallbackDefault($lang, $translationKey, $cfgIni, $section)
    {
        $translation = $this->get($lang, $translationKey, $cfgIni, $section);

        if (empty($translation) and $lang != self::DEFAULT_LANGUAGE) {
            $translation = $this->get(self::DEFAULT_LANGUAGE, $translationKey, $cfgIni, $section);
        }

        return $translation;
    }

    /**
     * Get the translation for this language in this cfgIni at section with this translationKey.
     *
     * This method looks first up in the internal cache. If not found it reads the translation and stores it in the cache.
     *
     * Note: this cache handling is not well implemented; think to a getFromCache()-method before extending this!
     *
     * @param $lang
     * @param $cfgIni
     * @param $section
     * @param $translationKey
     * @return null|string
     * @throws InvalidArgumentException
     */
    public function get($lang, $translationKey, $cfgIni, $section)
    {
        $translationsPerIni = $this->_getTranslationsFromCache($lang, $cfgIni);

        if (is_null($translationsPerIni)) {
            $translationsPerIni = $this->_readTranslations($lang, $cfgIni);
            $this->_setTranslationsCache($lang, $cfgIni, $translationsPerIni);
        }

        if (!empty($translationsPerIni) and !array_key_exists($section, $translationsPerIni)) {
            throw new InvalidArgumentException("Ini doesn't exists for '$lang/$cfgIni/$section");
        }
        if (array_key_exists($translationKey, $translationsPerIni[$section])) {
            return $translationsPerIni[$section][$translationKey];
        }

        return null;
    }


    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // the whole cache-code should be outsourced into FactTransCache or so... makes it also testable.


    /**
     * Read the translations from for this language and cfgIni.
     *
     * Replaces a non-existent config for this langugage with the default-language.
     *
     * @param $lang
     * @param $cfgIni
     * @return array
     * @throws InvalidArgumentException
     */
    protected function _readTranslations($lang, $cfgIni)
    {
        if (empty($this->_inifilesPerLanguage[$lang][$cfgIni])) {
            throw new InvalidArgumentException("No ini-file for '$lang/$cfgIni'");
        }

        $translationsPerIni = $this->_readTranslationsPerIni($this->_inifilesPerLanguage[$lang][$cfgIni]);

        if (empty($translationsPerIni)) {
            if (self::DEFAULT_LANGUAGE != $lang) {
                echo "\nProblem loading '$lang/$cfgIni'! Loading default language!\n";
                $translationsPerIni = $this->_readTranslations(self::DEFAULT_LANGUAGE, $cfgIni);
            } else {
                echo "\nProblem while loading default language '$lang/$cfgIni'!!!";
            }
        }
        return $translationsPerIni;
    }

    /**
     * Load a translation from path and returns the parsed translations as array.
     *
     * @param $path
     * @return array
     */
    protected function _readTranslationsPerIni($path)
    {
        // Switched to INI_SCANNER_RAW, Reason: Factorio uses keywords like "on", "off" in the translations, which are interpreted values
        $translationsPerIni = parse_ini_file($path, true, INI_SCANNER_RAW);
        return $translationsPerIni;
    }

    /**
     * Read a translation from cache.
     *
     * @param $lang
     * @param $cfgIni
     * @return null|string
     */
    protected function _getTranslationsFromCache($lang, $cfgIni)
    {
        if (!empty($this->_translationCache[$lang][$cfgIni])) {
            return $this->_translationCache[$lang][$cfgIni];
        }
        return null;
    }

    /**
     * Stores a translation into cache
     *
     * @param $lang
     * @param $cfgIni
     * @param $translationsPerIni
     * @throws InvalidArgumentException
     */
    protected function _setTranslationsCache($lang, $cfgIni, $translationsPerIni)
    {
        if (!empty($this->_translationCache[$lang][$cfgIni])) {
            throw new InvalidArgumentException("Already filled cache for '$lang/$cfgIni'");
        }
        $this->_translationCache[$lang][$cfgIni] = $translationsPerIni;
    }


}
