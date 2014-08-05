<?php

/**
 * File FactContent
 *
 * @author ssilk (Alex Aulbach)
 * @date   2014-06-18
 */


/**
 * Class FactContent
 *
 * Handles the XML-structure and useful sub-structures.
 */
class FactContent {

    /**
     * The complete XML-tree as one big array for easy access.
     *
     * @var array
     */
    public $tree = array();

    /**
     * initialize
     *
     * @param SimpleXMLElement $xml
     */
    public function __construct(SimpleXMLElement $xml)
    {
        $this->fill($xml);
    }

    /**
     * (Re-)initialize the tree.
     *
     * @param SimpleXMLElement $xml
     */
    protected function fill(SimpleXMLElement $xml)
    {
        $this->tree = $this->toArray($xml);
    }

    /**
     * This converts the complicated and more or less unuseable Simple-XML-Object into an array.
     *
     * Uses json_decode/encode as a trick and calls itself recursively.
     *
     * @param $xml
     * @return mixed
     */
    protected function toArray($xml) {
        $array = json_decode(json_encode($xml), TRUE);

        foreach ( array_slice($array, 0) as $key => $value ) {
            if ( empty($value) ) $array[$key] = NULL;
            elseif ( is_array($value) ) $array[$key] = $this->toArray($value);
        }

        return $array;
    }

}