<?php

$translationsPerIni = parse_ini_file('factorio/Contents/data/base/locale/en/item-names.cfg', true);
$translationsPerIni = parse_ini_file('factorio/Contents/data/base/locale/en/item-names.cfg', true, INI_SCANNER_RAW);
        // Reason: Factorio uses keywords like "on", "off" in the translations, which are interpreted values
        //$translationsPerIni = parse_ini_string(file_get_contents($path), true, INI_SCANNER_RAW);
