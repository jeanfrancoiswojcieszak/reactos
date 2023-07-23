#!/bin/bash

git clone https://github.com/jeanfrancoiswojcieszak/reactos.git

cd reactos
mkdir -p build/tools
cd build/tools
cmake -G "Unix Makefiles" ../..
cmake -G "Unix Makefiles" -DREACTOS_BUILD_TOOLS_DIR:DIR=$TOOLS -DCMAKE_TOOLCHAIN_FILE=toolchain-mingw32.cmake ../..
cd sdk/tools/mkhive
make
cd ../../..

