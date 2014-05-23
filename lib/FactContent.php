<?php

class FactContent {

    public $content = array();

    public function __construct(SimpleXMLElement $xml)
    {
        $this->fill($xml);
    }

    protected function fill(SimpleXMLElement $xml)
    {
        $this->content = $this->toArray($xml);
    }

    protected function toArray($xml) {
        $array = json_decode(json_encode($xml), TRUE);

        foreach ( array_slice($array, 0) as $key => $value ) {
            if ( empty($value) ) $array[$key] = NULL;
            elseif ( is_array($value) ) $array[$key] = $this->toArray($value);
        }

        return $array;
    }




    public function getItemKeys()
    {
        $items =& $this->content['raw']['item'];
        return array_keys($items);
    }

    public function getItemKeysSorted()
    {
        $keys = array();
        $items =& $this->content['raw']['item'];
        foreach ($items as $key => $value) {
            $keys[$key] = $value['order'];
        }
        asort($keys);
        return array_keys($keys);
    }

    public function getItem($key)
    {
        if (!array_key_exists($key, $this->content['raw']['item'])) {
            throw new InvalidArgumentException("invalid item '$key'");
        }
        return $this->content['raw']['item'][$key];
    }

}