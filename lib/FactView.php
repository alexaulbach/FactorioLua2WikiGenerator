<?php
/**
 * Created by PhpStorm.
 * User: alexaulbach
 * Date: 28.05.14
 * Time: 23:10
 */

class FactView
{

    public function __construct($type, $data)
    {
        // Here a factory can be introduced, for now it is not needed
        $this->_type = $type;

        foreach ($data as $key => $val) {
            $this->$key = $val;
        }
    }

}