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
class FactContentModules {

    /**
     * The complete XML-tree as one big array for easy access.
     *
     * @var array
     */
    public $tree = array();

    protected $_moduleList = array();

    /**
     * initialize
     *
     * @param FactContent $factContent
     */
    public function __construct(FactContent $factContent)
    {
        $this->tree = $factContent->tree['modules']['module'];
        $this->_initializeModules();
    }

    protected function _initializeModules()
    {
        foreach ($this->tree as $key => $module) {
            $this->_moduleList[$key] = $module['basename'];
        }
    }

    protected function _getModuleKey($moduleName)
    {
        $key = array_search($moduleName, $this->_moduleList);
        if ($key === false) {
            throw new InvalidArgumentException("No key found for '$moduleName'");
        }
        return $key;
    }

    /**
     * Returns the names of all modules.
     *
     * @return array
     */
    public function getModules()
    {
        return $this->_moduleList;
    }

    public function getLocalPath($moduleName)
    {
        $path = $this->tree[$this->_getModuleKey($moduleName)]['content']['localPath'];
        if (empty($path)) {
            throw new InvalidArgumentException("No local path for module '$moduleName'.");
        }
        return $path;
    }

    public function getLocalPaths()
    {
        $paths = array();
        foreach ($this->getModules() as $moduleName) {
            $paths[] = $this->getLocalPath($moduleName);
        }
        return $paths;
    }

}