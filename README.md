# A simple parser demo project

A demo project from the http://greatcodeclub.com/ to play with parsing and Jison.

## Installation

You need:

- A recent version of [node](http://nodejs.org/).
- `make`. You probably have it already.

To install Node modules and start the test:

    $ npm install
    $ make watch

Then modify any file, the parser will be recompiled and the file `test.js` will be executed.

## How to browse the code

Here are the files you should take a look at, in logical order:

1. `tokens.jisonlex` defines the tokens produced by the lexer.
2. `grammar.jison` is the grammar defining the syntax. It is compiled to `parser.js`.
3. `test.js` uses the parser to parse and output the results to the console. Modify this file.

## How to modify the parser?

Here's an idea to modify the parser on your own. Try adding support for parsing `false` or floating point numbers.

You first need to define a new token in `tokens.jisonlex`:

    [regexp/string to match that token]        return 'A_UNIQUE_AND_AWESOME_NAME'

Then, add that tokens to `grammar.jison`.

    expression:
      ...
    | A_UNIQUE_AND_AWESOME_NAME
    ; 

You can test your parser using `test.js`.

## License

Copyright 2014 Coded Inc.  
marc@codedinc.com

You are free to modify and distribute this however you want. Except for teaching purposes.
