<?php



class FactTrans {

    protected $_translationCache = array();

    protected $_availableLanguages = array();

    protected $_inifilesPerLanguage = array();

    public function __construct(array $translationBasedirs)
    {
        foreach ($translationBasedirs as $dir) {
            // construct new
            $languagesDirHandle = dir($dir);

            while (false !== ($language = $languagesDirHandle->read())) {
                if (!in_array($language, $this->_availableLanguages)) {
                    $this->_availableLanguages[] = $language;
                }
                $inifilesDirHandle = dir($translationBasedirs . DIRECTORY_SEPARATOR . $language);
                while (false !== ($inifile = $inifilesDirHandle->read())) {
                    $ini = preg_replace('/.ini$/', '', $inifile);
                    // not handling multiple ini-files per language yet!
                    $this->_inifilesPerLanguage[$language][$ini] = $translationBasedirs . DIRECTORY_SEPARATOR . $language . DIRECTORY_SEPARATOR . $inifile;
                }
            }
        }
    }

    public function getAvailableLanguages()
    {
        return $this->_availableLanguages;
    }

    public function getTranslation($lang, $ini, $needle)
    {
        $translations = $this->_getTranslationsFromCache($lang, $ini);

        if (is_null($translations)) {
            $translations = $this->_readTranslations($lang, $ini);
            $this->_setTranslationsCache($lang, $ini, $translations);
        }

        if (array_key_exists($needle, $translations)) {
            return $translations[$needle];
        }

        return null;
    }


    protected function _readTranslations($lang, $ini)
    {
        if (empty($this->_inifilesPerLanguage[$lang][$ini])) {
            throw new InvalidArgumentException("No ini-file for lang: '$lang', ini: '$ini'");
        }

        $translationsPerIni = parse_ini_file($this->_inifilesPerLanguage[$lang][$ini], true);
        return $translationsPerIni;
    }

    protected function _getTranslationsFromCache($lang, $ini)
    {
        if (array_key_exists($ini, $this->_translationCache[$lang])) {
            return $this->_translationCache[$lang][$ini];
        }
        return null;
    }

    protected function _setTranslationsCache($lang, $ini, $translations)
    {
        if (array_key_exists($ini, $this->_translationCache[$lang])) {
            throw new InvalidArgumentException("Already filled cache for lang: '$lang', ini: '$ini'");
        }
        $this->_translationCache[$lang][$ini] = $translations;
    }


}
