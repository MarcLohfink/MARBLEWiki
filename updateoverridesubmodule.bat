@echo off

set "currentDir=%cd%"
echo Process submodules in: %currentDir%

git submodule foreach git stash 

git submodule foreach git fetch

git submodule foreach git pull 

git submodule update --remote
