@echo off

FOR /F "tokens=*" %%i IN ('npm bin') DO SET BIN=%%i

"%BIN%\jison" grammar.jison tokens.jisonlex -o parser.js

if "%1" == "test" (
  node test.js
  goto DONE
)

if "%1" == "watch" (
  "%BIN%\nodemon" -x 'make test' -e 'js jison jisonlex' -q
  goto DONE
)

:DONE
