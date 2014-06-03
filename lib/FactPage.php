<?php
/**
 * User: alexaulbach
 * Date: 13.05.14
 * Time: 18:12
 */


class FactPage
{

    const PAGE_SUBDIR = 'pages';


    public function __construct($templatePath)
    {
        $this->templatePath = $templatePath;
    }

    public function createPage($pagename, FactView $view)
    {
        $path = $this->pagenameToPath($pagename);

        $content = $this->render($view);

        $this->createDirHier($path);

        if (! ($handle = fopen($path, 'w')) ) die("Cannot write '$path'");
        fputs($handle, $content, true);
        fclose($handle);
    }

    /**
     * @param $view
     * @return string
     */
    public function render(FactView $view)
    {
        ob_start();

        include $this->templatePath;

        $content = ob_get_contents();
        ob_end_clean();

        return $content;
    }

    /**
     * TODO: Very straigtforward, many fixed things inside!
     *
     * @param $pagename
     * @return mixed|string
     */
    protected function pagenameToPath($pagename)
    {
        // replace "/de" to ".de"
        $path = preg_replace('#/(\w\w)$#', '.\1', $pagename);
        $path = str_replace(':', '/', $path);
        $path .= self::PAGE_SUBDIR . DIRECTORY_SEPARATOR . "$pagename.page";

        return $path;
    }

    /**
     * creates directory hirarchy
     *
     * @param $path
     */
    protected function createDirHier($path)
    {
        if (!file_exists(dirname($path))) {
            mkdir(dirname($path), 0777, true) || die("Cannot mkdir '$path'");
        }
    }

}