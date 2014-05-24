<?php
/**
 * User: alexaulbach
 * Date: 13.05.14
 * Time: 18:12
 */


class FactPage
{

    const PAGE_SUBDIR = 'pages';


    public function __construct($templatePath, $namespace)
    {

    }

    function createPage($name, $namespace, FactView $view)
    {
        $pagename = self::PAGE_SUBDIR . DIRECTORY_SEPARATOR . $namespace . DIRECTORY_SEPARATOR . $name;

#            echo "\n" . $pagename;

        if (!file_exists(dirname($pagename))) {
            mkdir(dirname($pagename), 0777, true) || die("Cannot mkdir '$pagename'");
        }

        if (! ($handle = fopen($pagename, 'w')) ) die("Cannot write '$pagename'");
        fputs($handle, $content, true);
        fclose($handle);
    }
}