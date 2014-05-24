<?php



class FactTrans {

    const DEFAULT_LANGUAGE = 'en';

    protected $_translationCache = array();

    protected $_availableLanguages = array();

    protected $_inifilesPerLanguage = array();

    public function __construct(array $translationBasedirs)
    {
        foreach ($translationBasedirs as $translationBasedir) {
            $translationBasedir = rtrim($translationBasedir, '/');
            // construct new
            $languagesDirHandle = dir($translationBasedir);

            while (false !== ($language = $languagesDirHandle->read())) {
                if (!preg_match('/^\w\w$/', $language)) continue;
                if (!in_array($language, $this->_availableLanguages)) {
                    $this->_availableLanguages[] = $language;
                }
                $inifilesDirHandle = dir($translationBasedir . DIRECTORY_SEPARATOR . $language);
                while (false !== ($inifile = $inifilesDirHandle->read())) {
                    if (!preg_match('/.*.cfg$/', $inifile)) continue;
                    $ini = preg_replace('/.cfg$/', '', $inifile);
                    // not handling multiple ini-files per language yet!
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

    public function getTranslation($lang, $cfg, $ini, $defaultTrans)
    {
        $translations = $this->_getTranslationsFromCache($lang, $cfg);

        if (is_null($translations)) {
            $translations = $this->_readTranslations($lang, $cfg);
            $this->_setTranslationsCache($lang, $cfg, $translations);
        }

        if (!empty($translations) and !array_key_exists($ini, $translations)) {
            throw new InvalidArgumentException("Ini doesn't exists for '$lang/$cfg/$ini");
        }
        if (array_key_exists($defaultTrans, $translations[$ini])) {
            return $translations[$ini][$defaultTrans];
        }

        return null;
    }


    protected function _readTranslations($lang, $cfg)
    {
        if (empty($this->_inifilesPerLanguage[$lang][$cfg])) {
            throw new InvalidArgumentException("No ini-file for '$lang/$cfg'");
        }

        $translationsPerIni = $this->_readTranslationsPerIni($this->_inifilesPerLanguage[$lang][$cfg]);

        if (empty($translationsPerIni)) {
            if (self::DEFAULT_LANGUAGE != $lang) {
                echo "\nProblem loading '$lang/$cfg'! Loading default language!\n";
                $translationsPerIni = $this->_readTranslations(self::DEFAULT_LANGUAGE, $cfg);
            } else {
                echo "\nProblem while loading default language '$lang/$cfg'!!!";
            }
        }
        return $translationsPerIni;
    }

    protected function _readTranslationsPerIni($path)
    {
        // This doesn't work:
        // $translationsPerIni = parse_ini_file($this->_inifilesPerLanguage[$lang][$cfg], true);
        // Reason: Factorio uses keywords like "on", "off" in the translations, which are interpreted values
        $translationsPerIni = parse_ini_string(file_get_contents($path), true, INI_SCANNER_RAW);

        return $translationsPerIni;
    }

    protected function _getTranslationsFromCache($lang, $cfg)
    {
        if (!empty($this->_translationCache[$lang][$cfg])) {
            return $this->_translationCache[$lang][$cfg];
        }
        return null;
    }

    protected function _setTranslationsCache($lang, $cfg, $translations)
    {
        if (!empty($this->_translationCache[$lang][$cfg])) {
            throw new InvalidArgumentException("Already filled cache for '$lang/$cfg'");
        }
        $this->_translationCache[$lang][$cfg] = $translations;
    }


}
