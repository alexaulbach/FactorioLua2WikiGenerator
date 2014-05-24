#!/usr/bin/php
<?php
/**
 * Convert generated XML-file (by LuaRaw2XML.lua) to Wiki-pages
 *
 * needs as first parameter the xml-file. Example:
 * > ./Xml2Wiki.php tmp/factorio-data.xml factorio/data/base/locale factorio/data/core/locale
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
$trans = new FactTrans(array_slice($argv, 2)); // takes rest of arguments


createItemPages($content, $trans);

/**
 * create ITEM pages
 *
 * @param FactContent $content
 */
function createItemPages(FactContent $content, FactTrans $trans) {
    foreach ($content->getItemKeys() as $key) {
        echo "Page: $key\n";

        $item = $content->getItem($key);

        foreach ($trans->getAvailableLanguages() as $language) {
           echo " / $language: " . $trans->getTranslation($language, 'entity-names', 'entity-name', $key);
        }

        print_r($item);



    }
}


// create item-overview pages

// create item-templates


// ....

// create ENTITY-pages


// create RECIPE-pages


// create RESEARCH-pages



