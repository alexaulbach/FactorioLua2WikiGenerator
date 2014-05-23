#!/usr/bin/php
<?php
/**
 * Convert generated XML-file (by LuaRaw2XML.lua) to Wiki-pages
 *
 * needs as first parameter the xml-file. Example:
 * > ./Xml2Wiki.php tmp/factorio-data.xml
 *
 *
 * export XDEBUG_CONFIG="idekey=PHPSTORM"
 */

ini_set('include_path', ini_get('include_path') . ':' . dirname(__FILE__) . DIRECTORY_SEPARATOR . "lib");
include_once('FactContent.php');
include_once('FactPage.php');
include_once('FactTrans.php');

$xml = simplexml_load_file($argv[1]);
$content = new FactContent($xml);

// debug
print_r($content->tree['raw']['item']);
print_r($content->getItemKeysSorted());
print_r($content->getItemKeys());


createItemPages($content);

/**
 * create ITEM pages
 *
 * @param FactContent $content
 */
function createItemPages(FactContent $content) {
    foreach ($content->getItemKeys() as $key) {
        echo "Page: $key\n";

    }
}


// create item-overview pages

// create item-templates


// ....

// create ENTITY-pages


// create RECIPE-pages


// create RESEARCH-pages



