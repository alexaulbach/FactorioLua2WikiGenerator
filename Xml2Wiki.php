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
include_once('FactContentItem.php');
include_once('FactContentDataRawList.php');
include_once('FactPage.php');
include_once('FactTransDefault.php');

const FACT_TIMEZONE = 'UTC';
date_default_timezone_set(FACT_TIMEZONE);



$xml = simplexml_load_file($argv[1]);
$content = new FactContent($xml);
$trans = new FactTransDefault(array_slice($argv, 2)); // takes rest of arguments


#createItemPages($content, $trans);
createDataRawList($content, $trans);

/**
 * create ITEM pages
 *
 * @param FactContent $content
 */
function createItemPages(FactContent $rawContent, FactTransDefault $trans)
{
    $trans->setDefault('entity-names', 'entity-name');
    $content = new FactContentItem($content);
    $page = new FactPage($trans, 'templates/PageItem.phtml');

    foreach ($content->getKeys() as $key) {
        $item = $content->get($key);

        foreach ($trans->getAvailableLanguages() as $language) {
            if ($language != FactTrans::DEFAULT_LANGUAGE) {
                $pagename = 'Item:' . $key . '/' . $language;
            } else {
                $pagename = 'Item:' . $key;
            }

            echo "\nPagename: $pagename";
            echo " / $language: " . $trans->getFallbackLDefaultOrKey($language, $key);

            $page->createPage($key, $item, $language);
        }
    }
}

function createDataRawList(FactContent $rawContent, FactTrans $trans)
{
#    $trans->setDefault('', ''); // no translation needed
    $content = new FactContentDataRawList($rawContent);
#    $page = new FactPage($trans, 'lib/PageContent.phtml');

    foreach ($content->getKeys() as $key) {
        $list = $content->get($key);

        echo "\n$key : \n";
        print_r($list);

    }
}


// create item-overview pages

// create item-templates


// ....

// create ENTITY-pages


// create RECIPE-pages


// create RESEARCH-pages



