<?php

class FactContent {

    public $tree = array();

    public function __construct(SimpleXMLElement $xml)
    {
        $this->fill($xml);
    }

    protected function fill(SimpleXMLElement $xml)
    {
        $this->tree = $this->toArray($xml);
    }

    protected function toArray($xml) {
        $array = json_decode(json_encode($xml), TRUE);

        foreach ( array_slice($array, 0) as $key => $value ) {
            if ( empty($value) ) $array[$key] = NULL;
            elseif ( is_array($value) ) $array[$key] = $this->toArray($value);
        }

        return $array;
    }


    // ITEMS


    public function getItemKeys()
    {
        $items =& $this->tree['raw']['item'];
        return array_keys($items);
    }

    public function getItemKeysSorted()
    {
        $keys = array();
        $items =& $this->tree['raw']['item'];
        foreach ($items as $key => $value) {
            $keys[$key] = $value['order'];
        }
        asort($keys);
        return array_keys($keys);
    }

    public function getItem($key)
    {
        if (!array_key_exists($key, $this->tree['raw']['item'])) {
            throw new InvalidArgumentException("invalid item '$key'");
        }
        return $this->tree['raw']['item'][$key];
    }

}