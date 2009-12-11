Furious Generators
=============

Furious Generators are a set of rails generators by [Trevor Oke](http://trevoroke.com) that you can use to help create
rails applications more quickly.

Installation
------------

Install the gem with:

    sudo gem install furious-generators -s http://gemcutter.org

You can also install it as a rails plugin:

    script/plugin install git://github.com/thefury/furious-generators.git

Usage
-----

### Blueprint Generator

Add the blueprint css files to your public/stylesheets folder.

    script/generate furious-blueprint

### JQuery Generator

Add the jquery and jquery-ui files to your public/javascripts folder.

    script/generate furious-jquery

### Layout Generator

Create a standard modifiable layout along with associated css, js, and helper files

    script/generate furious-layout


Contributing
---

* Fork this repository.
* Make your changes.
* Be sure to include tests!
* Send a pull request.

Links
-----

* Repository: git://github.com/thefury/furious-generators.git
* Issues: <http://github.com/thefury/furious-generators/issues>
* Gem: <http://gemcutter.org/gems/furious-generators>

Author
------

Trevor Oke - [http://trevoroke.com](http://trevoroke.com)

Credits
-------

A number of other libraries have been included in these generators:

* Blueprint CSS: <http://www.blueprintcss.org/>
* JQuery: <http://jquery.com/>