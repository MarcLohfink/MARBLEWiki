@echo off
echo Start local docfx server

setlocal

set "currentDir=%cd%"

echo Process in %~dp0\docfx_project/
cd %~dp0/docfx_project/

echo run docfx docfx.json --serve
docfx docfx.json --serve

cd %currentDir%

endlocal