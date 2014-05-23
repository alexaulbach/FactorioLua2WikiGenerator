#!/usr/bin/php
<?php
/**
 * export XDEBUG_CONFIG="idekey=PHPSTORM"
 */

ini_set('include_path', ini_get('include_path') . ':' . dirname(__FILE__) . DIRECTORY_SEPARATOR . "lib");
include_once('FactContent.php');
include_once('FactPage.php');

$xml = simplexml_load_file($argv[1]);
$content = new FactContent($xml);

print_r($content->tree['raw']['item']);

print_r($content->getItemKeysSorted());
print_r($content->getItemKeys());



function createItemPages(FactContent $content) {
    foreach ($content->getItemKeys() as $key) {


    }
}


