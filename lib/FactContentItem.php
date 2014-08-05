<?php


/**
 * Class FactContentItem
 */
class FactContentItem
{

    /**
     * The complete XML-tree as one big array for easy access.
     *
     * @var array
     */
    public $tree = array();

    /**
     * initialize
     *
     * @param FactContent $factContent
     */
    public function __construct(FactContent $factContent)
    {
        // this is a reference, to avoid copy!
        // this is ok, cause the tree is not allowed to change during runtime!
        $this->tree &= $factContent->tree;
    }

    /**
     * Returns the names of all items.
     *
     * @return array
     */
    public function getKeys()
    {
        $items =& $this->tree['raw']['item'];
        return array_keys($items);
    }

    /**
     * Returns the names of all items.
     *7
     * This sorts by the order-key in the item-structures!
     *
     * @return array
     */
    public function getKeysSorted()
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
    public function get($key)
    {
        if (!array_key_exists($key, $this->tree['raw']['item'])) {
            throw new InvalidArgumentException("invalid item '$key'");
        }
        return $this->tree['raw']['item'][$key];
    }

}
