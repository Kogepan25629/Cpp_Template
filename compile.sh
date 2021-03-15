#!/bin/sh

DIR="build"
if [ ! -d ${DIR} ]; then
  mkdir ${DIR}
fi

cd ${DIR}

# Cmake
echo " --- Running CMake..."
cmake .. -G "MSYS Makefiles" -DCMAKE_BUILD_TYPE=Debug
#-G "MSYS Makefiles"
RESULT=$?
echo " CMake done!"

# Make.
if [ ${RESULT} = 0 ]; then
  echo " --- Compiling..."
  make
  echo " Compilation done!"
fi


exit 0