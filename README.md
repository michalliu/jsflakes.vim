jsflakes.vim
============

A powerful vim plugin lint javascript code on the fly

Install
============

1. You need install [jsruntime](https://github.com/michalliu/jsruntime.vim) first

2. You need install [jsoncodecs](https://github.com/michalliu/jsoncodecs.vim) first

3. Copy things ftplugin to your __vimfiles__ directory

Usage
============

For javascript file, jsflakes will automaticlly check errors in your code while you editing. 

You can aslo use [quickfix commands](http://vimcdoc.sourceforge.net/doc/quickfix.html), like

    :cl list errors in your javascript code
    :clopen open quickfix window
    
Advance Usage
============

Jsflakes aslo support html file, add following to your __vimrc__

    au FileType html source $VIM\vimfiles\ftplugin\javascript\jsflakes.vim
    
Jsflakes use [jslint](http://www.jshint.com/) to check errors. Jslint has many [options](http://www.jshint.com/options/),
Jslint option file should be at __~/.jshintrc__ by default. your can change it to other location by adding following line to your vimrc

    let g:jshint_rcfile = {PATH}

Jsflakes aslo provide commands to run javascript directly inside VIM

1. RunJS

        :RunJS   run javascript code
    
2. RunJSBlock

        :RunJS 1,2  run javascript code from line 1 to line 2

3. RunHtml

        :RunHtml   run html code
    
4. RunHtmlBlock

        :RunHtmlBlock 1,2  run html code from line 1 to line 2
