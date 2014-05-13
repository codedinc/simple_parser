@echo off

SET BIN=node_modules\.bin

%BIN%\jison lib\grammar.jison lib\tokens.jisonlex -o lib\parser.js

if "%1" == "test" (
  node test.js
  goto DONE
)

if "%1" == "watch" (
  %BIN%\nodemon -x 'make test' -e 'js jison jisonlex' -q
  goto DONE
)

:DONE
