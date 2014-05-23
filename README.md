Factotorio Lua 2 Wiki Generator
===============================


### This is a converter for Factorio to generate a documentation for all entities automatically into media-wiki-pages.


It does or should:
------------------

1. Convert the Lua-configuration into XML (LuaRaw2Xml.lua)

* written in Lua cause for logical reasons.
* Input are the directories of the factorio-modules (in data-dir).
* Core must be the first.
* Everything is more or less well explained as comment.

2. Convert the XML-structure to wiki-subpages (Xml2Wiki.php)

* This is written in PHP. I evaluated very long, which is better for this job: XSLT or PHP (and at borderline I tried also phyton)
* PHP could be used much easier, cause the internal array-structure is quite useful and easy to understand. For XSLT this is hard to understand in that case.
* Inbuilt template engine of PHP makes the things really easy and fast
* Maintainability was a very important feature (new version of Factorio every two month...)


Plans:
------

2.1 Generate more pics

* I want to run a Factorio-instance, which loads a map and takes pictures.
* I want to generate more pics of the recipes, research-trees and so on with Graphviz/Dot.

3. Upload the generated wiki pages and pictures to the Factorio-Wiki

### What's needed to use that?

Currently: Installed Lua and PHP (5.4 and up, with simplexml, json; normally nothing special)

## How it works?

LuaRaw2Xml.lua converts out of the data-variable a big XML structure. This is just too ensure a safe exchange-format between Lua and PHP.
Xml2Wiki.php takes this XML-file and create a fixed directory structure out of it.
