@echo off

rem PROJECT_NAME
FOR /F "usebackq delims== tokens=1,2" %%i IN ("ProjectName.txt") do SET %%i=%%j

rem set _PROJECT_NAME=%PROJECT_NAME%

set DIR="build"
IF not exist "%DIR%" (mkdir %DIR%)

cd %DIR%

rem Cmake
ECHO " --- Running CMake..."
cmake .. -D PROJECT_NAME=%PROJECT_NAME% -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug
ECHO " --- CMake done!"

IF %ERRORLEVEL%==0 (
    ECHO " --- Compiling..."
    make
    ECHO " --- Compilation done!"
)