<?php


include_once('FactTrans.php');

class FactTransDefault extends FactTrans
{

    protected $_defaultCfgIni;
    protected $_defaultSection;

    public function __construct(array $translationBasedirs, $defaultCfgIni, $defaultSection)
    {
        $this->_defaultCfgIni = $defaultCfgIni;
        $this->_defaultSection = $defaultSection;

        parent::__construct($translationBasedirs);
    }

    public function getFallbackLDefaultOrKey($lang, $translationKey)
    {
        return parent::getFallbackLDefaultOrKey($lang, $this->_defaultCfgIni, $this->_defaultSection, $translationKey);
    }

    public function getFallbackDefault($lang, $translationKey)
    {
        return parent::getFallbackDefault($lang, $this->_defaultCfgIni, $this->_defaultSection, $translationKey);
    }

    public function get($lang, $translationKey)
    {
        return parent::get($lang, $this->_defaultCfgIni, $this->_defaultSection, $translationKey);
    }

    public function setDefaultCfgIni($cfgIni)
    {
        $this->_defaultCfgIni = $cfgIni;
    }

    public function setDefaultSection($section)
    {
        $this->_defaultSection = $section;
    }

    public function getDefaultCfgIni()
    {
        return $this->_defaultCfgIni;
    }

    public function getDefaultSection()
    {
        return $this->_defaultSection;
    }

}