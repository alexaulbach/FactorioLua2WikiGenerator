<?php



class FactTrans {

    const DEFAULT_LANGUAGE = 'en';

    protected $_translationCache = array();

    protected $_availableLanguages = array();

    protected $_inifilesPerLanguage = array();

    public function __construct(array $translationBasedirs)
    {
        foreach ($translationBasedirs as $translationBasedir) {
            $translationBasedir = rtrim($translationBasedir, '/'); // remove trailing '/'
            // construct new
            $languagesDirHandle = dir($translationBasedir);

            // read languages subdir
            while (false !== ($language = $languagesDirHandle->read())) {
                if (!preg_match('/^\w\w$/', $language)) continue;

                if (!in_array($language, $this->_availableLanguages)) {
                    $this->_availableLanguages[] = $language;
                }
                $inifilesDirHandle = dir($translationBasedir . DIRECTORY_SEPARATOR . $language);

                // read ini-files per language
                while (false !== ($inifile = $inifilesDirHandle->read())) {
                    if (!preg_match('/.*.cfg$/', $inifile)) continue;

                    $ini = preg_replace('/.cfg$/', '', $inifile);

                    // not handling equal named ini-files in different basedirs per language yet!
                    if (!empty($this->_inifilesPerLanguage[$language][$ini])) {
                        throw new InvalidArgumentException("Cannot set two inifiles for lang: '$lang', ini: '$ini'");
                    }
                    $this->_inifilesPerLanguage[$language][$ini] = $translationBasedir . DIRECTORY_SEPARATOR . $language . DIRECTORY_SEPARATOR . $inifile;
                }
            }
        }
    }

    public function getAvailableLanguages()
    {
        return $this->_availableLanguages;
    }


    public function getFallbackLDefaultOrKey($lang, $cfgIni, $section, $translationKey)
    {
        $translation = $this->getFallbackDefault($lang, $cfgIni, $section, $translationKey);

        if (empty($translation)) {
            $translation = "<{$translationKey}>";
        }
        return $translation;
    }


    public function getFallbackDefault($lang, $cfgIni, $section, $translationKey)
    {
        $translation = $this->get($lang, $cfgIni, $section, $translationKey);

        if (empty($translation) and $lang != self::DEFAULT_LANGUAGE) {
            $translation = $this->get(self::DEFAULT_LANGUAGE, $cfgIni, $section, $translationKey);
        }
        return $translation;
    }

    public function get($lang, $cfgIni, $section, $translationKey)
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

    protected function _readTranslationsPerIni($path)
    {
        // Switched to INI_SCANNER_RAW, Reason: Factorio uses keywords like "on", "off" in the translations, which are interpreted values
        $translationsPerIni = parse_ini_file($path, true, INI_SCANNER_RAW);
        return $translationsPerIni;
    }

    protected function _getTranslationsFromCache($lang, $cfgIni)
    {
        if (!empty($this->_translationCache[$lang][$cfgIni])) {
            return $this->_translationCache[$lang][$cfgIni];
        }
        return null;
    }

    protected function _setTranslationsCache($lang, $cfgIni, $translationsPerIni)
    {
        if (!empty($this->_translationCache[$lang][$cfgIni])) {
            throw new InvalidArgumentException("Already filled cache for '$lang/$cfgIni'");
        }
        $this->_translationCache[$lang][$cfgIni] = $translationsPerIni;
    }


}
