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
function createItemPages(FactContent $content, FactTrans $trans)
{
    $page = new FactPage($trans, 'lib/PageItem.phtml', 'entity-names', 'entity-name');

    foreach ($content->getItemKeys() as $key) {
        $item = $content->getItem($key);

        foreach ($trans->getAvailableLanguages() as $language) {
            if ($language != FactTrans::DEFAULT_LANGUAGE) {
                $pagename = 'Item:' . $key . '/' . $language;
            } else {
                $pagename = 'Item:' . $key;
            }

            echo "\nPagename: $pagename";

            echo " / $language: " . $trans->getFallbackLDefaultOrKey($language, 'entity-names', 'entity-name', $key);

            $page->createPage($key, $item, $language);
        }

#        print_r($item);

    }
}


// create item-overview pages

// create item-templates


// ....

// create ENTITY-pages


// create RECIPE-pages


// create RESEARCH-pages



