#!/bin/sh

# PROJECT_NAME
. ./ProjectName.txt

DIR="build"
if [ ! -d ${DIR} ]; then
  mkdir ${DIR}
fi

cd ${DIR}

# Cmake
echo " --- Running CMake..."
#cmake .. -D PROJECT_NAME=${PROJECT_NAME} -G "MSYS Makefiles" -DCMAKE_BUILD_TYPE=Debug
cmake .. -D PROJECT_NAME=${PROJECT_NAME} -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug
#-G "MSYS Makefiles"
RESULT=$?
echo " --- CMake done!"

# Make
if [ ${RESULT} = 0 ]; then
  echo " --- Compiling..."
  make
  echo " --- Compilation done!"
fi


exit 0