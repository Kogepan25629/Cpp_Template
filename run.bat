@echo off

rem PROJECT_NAME
FOR /F "usebackq delims== tokens=1,2" %%i IN ("ProjectName.txt") do SET %%i=%%j

call build\%PROJECT_NAME%.exe

