<?php

/**
 * File FactPage
 *
 * @autor ssilk (Alex Aulbach)
 * @date  2014-06-18
 */

/**
 * Class FactPage
 *
 * This should handle a "Wiki-page", when ready...
 *

 */
class FactPage
{

    /**
     * All generated pages will be put into a subdirectory "pages"
     */
    const PAGE_SUBDIR = 'pages';


    public $translator;

    public $rendererFilepath;

    public $language;

    public $pagename;

    public $view;


    /**
     * Defines, which renderer will be included (really very straightforward)
     *
     * @param \FactTrans|\FactTransDefault $translator
     * @param $rendererFilepath
     */
    public function __construct(FactTransDefault $translator, $rendererFilepath = null)
    {
        $this->translator = $translator;

        $this->rendererFilepath = $rendererFilepath;
    }


    /**
     * Writes created wiki-page on disk
     *
     * To generate a page it needs:
     * - the target pagename (like a path). This is independent from language.
     *   This also defines, which template to use, because the target defines a namespace in Wiki, which means, that
     *   the page has a very special usage.
     * - a view (the data from the XML), which is needed to generate the page
     * - a language (the page-template translates all needed stuff then itself). This also modifies the true pagename magically :)
     *
     * @param $pagename
     * @param array $view
     * @param $language
     */
    public function createPage($pagename, array $view, $language)
    {
        $this->language = $language;
        $this->pagename = $pagename;
        $this->view     = $view;

        $content = $this->render($view);
        $path = $this->pagenameToPath($pagename, $language);

        $this->writeFile($path, $content);
    }

    /**
     * @param $view
     * @return string
     */
    public function render(array $view)
    {
        ob_start();

        include $this->rendererFilepath;

        $content = ob_get_contents();
        ob_end_clean();

        return $content;
    }

    public function writeFile($path, $content)
    {
        $this->createDirHier($path);

        if (! ($handle = fopen($path, 'w')) ) die("Cannot write '$path'");
        fputs($handle, $content, strlen($content));
        fclose($handle);
    }

    /**
     * TODO: Very straigtforward, many fixed things inside!
     *
     * @param $pagename
     * @param $language
     * @return mixed|string
     */
    protected function pagenameToPath($pagename, $language)
    {
        $path = self::PAGE_SUBDIR . DIRECTORY_SEPARATOR . "$pagename:$language.page";

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


    // RENDER FUNCTIONS


    public function date()
    {
        return date('Y-m-d H:i');
    }

    public function version()
    {
        // very quirky :)
        // should return the current last tag, which is supposed to be the current version...
        return `git describe --tags`;
    }

    public function templateName()
    {
        return preg_replace('/Page(\w+).phtml/', '\1', basename($this->rendererFilepath));
    }

    public function pagename()
    {
        return $this->pagename;
    }

    public function tr($key)
    {
        return $this->translator->getFallbackLDefaultOrKey($this->language, $key);
    }


}