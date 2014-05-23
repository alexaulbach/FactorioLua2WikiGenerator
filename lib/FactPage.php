<?php
/**
 * Created by PhpStorm.
 * User: alexaulbach
 * Date: 13.05.14
 * Time: 18:12
 */


class FactPage
{
    function createPage($name, $namespace, $content) {

        $pagename = "pages" . DIRECTORY_SEPARATOR . $namespace . DIRECTORY_SEPARATOR . $name;

#            echo "\n" . $pagename;

        if (!file_exists(dirname($pagename))) {
            mkdir(dirname($pagename), 0777, true) || die("Cannot mkdir '$pagename'");
        }

        if (! ($handle = fopen($pagename, 'w')) ) die("Cannot write '$pagename'");
        fputs($handle, $content, true);
        fclose($handle);
    }
}