<?php


include_once('FactTrans.php');

class FactTransDefault extends FactTrans
{

    protected $_defaultIsSet = false;

    protected $_defaultCfgIni;
    protected $_defaultSection;

    public function __construct(array $translationBasedirs, $defaultCfgIni = null, $defaultSection = null)
    {
        $this->setDefault($defaultCfgIni, $defaultSection);

        parent::__construct($translationBasedirs);
    }

    public function getFallbackLDefaultOrKey($lang, $translationKey, $cfgIni = null, $section = null)
    {
        if (!$this->_isDefaultSet()) {
            throw new RuntimeException(__METHOD__ . ": The cfgIni and/or section is not set! cfgIni: '$this->_cfgIni' section: '$this->_section'");
        }

        return parent::getFallbackLDefaultOrKey($lang, $this->_defaultCfgIni, $this->_defaultSection, $translationKey);
    }

    public function getFallbackDefault($lang, $translationKey, $cfgIni = null, $section = null)
    {
        if (!$this->_isDefaultSet()) {
            throw new RuntimeException(__METHOD__ . ": The cfgIni and/or section is not set! cfgIni: '$this->_cfgIni' section: '$this->_section'");
        }

        return parent::getFallbackDefault($lang, $this->_defaultCfgIni, $this->_defaultSection, $translationKey);
    }

    public function get($lang, $translationKey, $cfgIni = null, $section = null)
    {
        if (!$this->_isDefaultSet()) {
            throw new RuntimeException(__METHOD__ . ": The cfgIni and/or section is not set! cfgIni: '$this->_cfgIni' section: '$this->_section'");
        }

        return parent::get($lang, $this->_defaultCfgIni, $this->_defaultSection, $translationKey);
    }


    public function setDefault($cfgIni, $section)
    {
        $this->setDefaultCfgIni($cfgIni);
        $this->setDefaultSection($section);
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



    protected function _isDefaultSet()
    {
        return $this->_defaultIsSet;
    }

    protected function _updateDefaultIsSet()
    {
        if (!empty($this->_defaultCfgIni) and !empty($this->_defaultSection)) {
            $this->_defaultIsSet = true;
        } else {
            $this->_defaultIsSet = false;
        }
    }

}