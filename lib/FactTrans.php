<?php



class FactTrans {

    protected $_trans = array();

    public function __construct($path)
    {
        $dirs = opendir($path);


        foreach ($dirs as $lang) {
            $translations = parse_ini_file($path . DIRECTORY_SEPARATOR . $lang, true);
            $this->_trans[$lang] = $translations;
        }
    }


}
