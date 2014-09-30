# sjson.vim

`sjson.vim` provides syntax highlighting to the [simplified JSON ("SJSON")](http://www.bitsquid.se/files/resource_management.html#Simplified%20JSON)
file format used by the [Bitsquid](http://bitsquid.se) engine.

## Installation

Install via your plugin manager or method of choice. There are no special installation requirements.

## Highlight Groups

`sjson.vim` defines the following highlight groups.

 - `sjsonKeyword` (keywords like `null`, `true` and `false`)
 - `sjsonComment` (comments, which are C++-style; C-style comments are not yet supported)
 - `sjsonBracket` (opening and closing square brackets)
 - `sjsonBrace` (opening and closing curly braces)
 - `sjsonEquals` (the assignment operator)
 - `sjsonComma` (the comma)
 - `sjsonNumber` (numbers)
 - `sjsonString` (characters enclosed in double quotes)

These are initially all linked to standard highlight groups; if you want to provide custom
highlighting you can override the group in your own `.vimrc`. For example, if you want to
make commas (which are optional in SJSON) really stand out, you could put

    highlight sjsonComma guifg=#ff0000 gui=bold

somewhere in your `.vimrc`
