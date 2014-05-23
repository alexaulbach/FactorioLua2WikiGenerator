#!/usr/bin/php
<?php
/**
 * Created by PhpStorm.
 * User: alexaulbach
 * Date: 15.04.14
 * Time: 07:50
 */


$xml = new SimpleXMLElement(file_get_contents($argv[1]));


#print_r($xml->raw[0]->item[0]);
#exit;

RecurseXML($xml->raw[0]->item[0]);

function RecurseXML($xml,$parent="")
{
    $child_count = 0;
    foreach($xml as $key=>$value)
    {
        $child_count++;
        if(RecurseXML($value,$parent.".".$key) == 0)  // no childern, aka "leaf node"
        {
            print($parent . "." . (string)$key . " = " . (string)$value . "<BR>\n");
        }
    }
    return $child_count;
}


function printSubNode(SimpleXMLElement $node, $depth = 0) {

    foreach ($node->children() as $key => $subnode) {
        echo str_repeat("::", $depth) . "$key";
        if (empty($subnode->type)) {
            echo "\n";
            printSubNode($subnode, $depth+1);
        } else {
            $types = $subnode->xpath('type');
            echo "\n";  print_r($subnode);
            if (count($types)>1) {
                str_repeat("->", $depth) . print_r($types,1);
            } else {
                echo str_repeat(">>", $depth) . $subnode->type;
            }
        }
        echo "\n";
    }
}
exit;








$items = $xml->xpath('factorio/raw/item');

#print_r($xml->xpath('*'));
#print_r($boiler[0]->boiler->type);

foreach ($boiler as $key => $node) {


    echo '//boiler.. : ';
    echo whatCase($node);
    echo key($node);
    print_r($node);
    echo "\n\n";
}

/*
$icon = $boiler[0]->xpath('//icon');

foreach ($icon as $key => $node) {
    echo '//boiler: ' . $key;
    print_r($node);
    echo "\n";
}
*/

function whatCase($node)
{
    if (count($node)>1) {
        return 'array';
    }
    if ($node->xpath('type')) {
        return 'type';
    }
    return 'null';
}