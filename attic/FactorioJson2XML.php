<?php
/**
 * Convert json-file to a nice xml
 *
 * @author alexaulbach
 * @date 30.01.14
 */


$jsonData = jsonFromStdIn();

#var_dump($jsonData);

if (empty($jsonData->module_info) or empty($jsonData->data_raw)) {
    die("Missing 'module_info' or 'data_raw' in JSON-structure.");
}
$rawXmlString = rawFactorioXmlHeader();

$rawXmlString .= "\n<factorio>";
$rawXmlString .= rawFactorioXmlModuleInfo($jsonData->module_info);
$rawXmlString .= rawFactorioXmlModuleInfoSub('data', $jsonData->data_raw, 1);
$rawXmlString .= "\n</factorio>";


echo $rawXmlString;

echo "\n";







function rawFactorioXmlHeader()
{
    return '<?xml version="1.0" encoding="UTF-8"?>
<!-- Factorio XML generator, ßilk (Alexander Aulbach), Jan 2013 -->
';
}

function rawFactorioXmlModuleInfo($moduleInfo)
{
    $xmlString = "\n  <modules>";
    $moduleInfo = (array) $moduleInfo;
    ksort($moduleInfo);
    foreach ($moduleInfo as $key => $val) {
        $xmlString .= "\n    <module>";
        $xmlString .= sprintf("\n    <basename>%s</basename>", $key);
        $xmlString .= rawFactorioXmlModuleInfoSub('content', $val, 3);
        $xmlString .= rawFactorioXmlModuleInfoSub('content-origin-json-pretty', json_encode($val), 3);
        $xmlString .= "\n    </module>";
    }

    $xmlString .= "\n  </modules>";
    return $xmlString;
}

function rawFactorioXmlModuleInfoSub($tag, $value, $level, $raw = false)
{
    if (is_scalar($value)) {
        return sprintf("\n%s<%s>%s</%s>",
            str_repeat("  ", $level), $tag, ($raw ? $value : htmlspecialchars($value)), $tag);
    }
    elseif (is_array($value) or is_object($value)) {
        $xml = '';
        if (is_object($value)) {
            $value = (array)$value;
            ksort($value);
        }
        foreach ($value as $key => $val) {
            $xml .= rawFactorioXmlModuleInfoSub($key, $val, $level+1);
        }
        return rawFactorioXmlModuleInfoSub($tag, $xml, $level, true);
    } else {
        die("Unknown value-type: $tag/$level " . var_dump($value,1));
    }

}

function jsonFromStdIn() {
    $input = '';
    while($f = fgets(STDIN)){
        $input .= $f;
    }
    $json = json_decode($input);
#var_export($input);

    $error = false;
    switch (json_last_error()) {
        case JSON_ERROR_NONE:
            break;
        case JSON_ERROR_DEPTH:
            $error = ' - Maximum stack depth exceeded';
            break;
        case JSON_ERROR_STATE_MISMATCH:
            $error = ' - Underflow or the modes mismatch';
            break;
        case JSON_ERROR_CTRL_CHAR:
            $error = ' - Unexpected control character found';
            break;
        case JSON_ERROR_SYNTAX:
            $error = ' - Syntax error, malformed JSON';
            break;
        case JSON_ERROR_UTF8:
            $error = ' - Malformed UTF-8 characters, possibly incorrectly encoded';
            break;
        default:
            $error = ' - Unknown error';
            break;
    }

    if ($error) {
        throw new Exception($error);
    }

    return $json;
}