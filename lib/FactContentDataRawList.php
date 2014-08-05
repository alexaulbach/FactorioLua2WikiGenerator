<?php


/**
 * Class FactContentDataRawList
 *
 * http://www.factorioforums.com/wiki/index.php?title=Data.raw
 */
class FactContentDataRawList
{

    const MAXDEPTH = 3;

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
        $this->tree =& $factContent->tree;
#        echo "HUHU"; print_r($factContent->tree); echo "HUHU";
#        echo "HUHU"; print_r($this->tree); echo "HUHU";
    }

    /**
     * Returns the names of all items.
     *
     * @return array
     */
    public function getKeys()
    {
        return array_keys($this->tree['raw']);
    }

    /**
     * Returns the names of all items.
     * This sorts by alphabet!
     *
     * @return array
     */
    public function getKeysSorted()
    {
        $keys = array_keys($this->tree['raw']);
        sort($keys);
        return $keys;
    }

    /**
     * Get the sub-structure.
     *
     * @param $key
     * @return array
     * @throws InvalidArgumentException
     */
    public function get($key)
    {
        if (!array_key_exists($key, $this->tree['raw'])) {
            throw new InvalidArgumentException("invalid key '$key'");
        }

        return $this->getSubkeys($this->tree['raw'][$key]);
    }

    protected function getSubkeys(&$subtree, $depth = 1)
    {
        if (!is_array($subtree)) return $subtree;

        if ($depth > self::MAXDEPTH) return '...';

        $subkeys = array_keys($subtree);

        $subkeys = $this->_sort($subkeys);

        // sort out basic-elements:
        if ($found = $this->_strucMatch(
            array(
                'must'     => array('width','height'),
                'oneof'    => array('filename','sheet'),
                'may'      => array('x', 'y', 'priority')
            ), $subkeys)) {
            if (in_array('sheet', $found)) {
                return $this->_createReplacement('sheet', $found);
            } else {
                return $this->_createReplacement('picture', $found);
            }
        }

        if ($this->_strucMatch(array(
                'must' => array('frame_count','frame_height','frame_width'),
                'may'  => array('filename','priority', 'y', 'x')
        ), $subkeys)) {
            return $this->_createReplacement('animation', $found);
        }

        if ($this->_strucMatch(array(
                'must' => array('r','g','b'),
                'may'  => array('a')
        ), $subkeys)) {
            return $this->_createReplacement('color', $found);
        }

        // special cases

        /**
         *  [pickup_position] => Array
         *      (
         *          [pickup_position] => ...
         *      )
         */

        if (count($subtree) == 1) {
            $subsubtree = next($subtree);
            if (count($subsubtree) == 1 and is_array($subsubtree) and array_key_exists($subkeys[0], $subsubtree)) {
                return $this->getSubkeys($subsubtree, $depth);
            }
        }



        // go through

        $return = array();
        foreach ($subkeys as $key) {

            /**
             * collision_box =>
             *   (
             *      collision_box =>
             *          0 =>
             *          1 =>
             */

            if (is_array($subtree[$key])) {
                $isNumber = true;
                foreach ($subtree[$key] as $subkey => $subsubtree) {
                    if (!is_numeric($subkey) or !is_scalar($subsubtree)) {
                        $isNumber = false;
                        break;
                    }
                }
                if ($isNumber) {
                    return implode(',', $subsubtree);
                }
            }



            switch ($key) {
                case 'icon':

#                case 'type':
                    // nothing
                    break;

                case 'flags':
                    if (is_array($subtree[$key]['flags'])) {
                        $return[$key] = implode(';', $subtree[$key]['flags']);
                    } else {
                        $return[$key] = $subtree[$key]['flags'];
                    }
                    break;

                default:
                    $return[$key] = $this->getSubkeys($subtree[$key], $depth + 1);
            }
        }
        return $return;
    }

    protected function _strucMatch(array $haystacks, array $subarray)
    {
        $results = array('must' => null, 'oneof' => null, 'may' => null);
        foreach ($results as $filt => $value) {
            if (array_key_exists($filt, $haystacks))
                $results[$filt] = $this->_find($haystacks[$filt], $subarray, $filt);
        }

        $foundParams = array();
        foreach ($results as $filt => $value) {
            if ($value === null) {
                continue;
            }
            if ($value === false) {
                return false;
            }
            foreach ($haystacks[$filt] as $found) {
                $foundParams[] = $found;
            }
        }

        return array_values($subarray);
    }

    protected function _find(array $what, array $haystack, $how)
    {
        $found = array();
        foreach ($what as $needle) {
            if (in_array($needle, $haystack)) {
                $found[] = $needle;
            }
        }

        switch ($how) {
            case 'must' :
                if (count($found) == count($what)) {
                    return $found;
                }
                return false;

            case 'oneof' :
                if (count($found) >= 1) {
                    return $found;
                }
                return false;

            case 'may' :
                return $found;

            default:
                throw new InvalidArgumentException("Unknown option '$how'");
        }
    }

    protected function _createReplacement($name, $found)
    {
        $params = array();
        foreach ($found as $val) {
            $params[] = substr($val, 0, 1);
        }
        return "$name(" . implode(',', $params) . ')';
    }

    protected function _sort($keys)
    {
        // default by alphabet
        sort($keys);

        $keys = $this->_sortToTop($keys, 'type');
        $keys = $this->_sortToTop($keys, 'name');

        return $keys;
    }

    protected function _sortToTop($keys, $what)
    {
        if (($offset = array_search($what, $keys)) !== false) {
            $value = $keys[$offset];
            array_splice($keys, $offset, 1);
            array_unshift($keys, $value);
        }
        return $keys;
    }

}
