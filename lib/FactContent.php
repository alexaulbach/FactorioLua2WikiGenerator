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


    // --------------------------------------------------------------
    // ITEMS
    // If this gets too big it needs to be moved into an own class!
    //

    /**
     * Returns the names of all items.
     *
     * @return array
     */
    public function getItemKeys()
    {
        $items =& $this->tree['raw']['item'];
        return array_keys($items);
    }

    /**
     * Returns the names of all items.
     *
     * This sorts by the order-key in the item-structures!
     *
     * @return array
     */
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

    /**
     * Get the item-structure.
     *
     * @example Array
     *    (
     *     [stack_size] => 50
     *     [type] => item
     *     [name] => stone-furnace
     *     [flags] => Array
     *     (
     *         [flags] => goes-to-quickbar
     *     )
     *     [icon] => __base__/graphics/icons/stone-furnace.png
     *     [place_result] => stone-furnace
     *     [order] => a[stone-furnace]
     *     [subgroup] => smelting-machine
     *    )
     *
     * @param $key
     * @return array
     * @throws InvalidArgumentException
     */
    public function getItem($key)
    {
        if (!array_key_exists($key, $this->tree['raw']['item'])) {
            throw new InvalidArgumentException("invalid item '$key'");
        }
        return $this->tree['raw']['item'][$key];
    }

}