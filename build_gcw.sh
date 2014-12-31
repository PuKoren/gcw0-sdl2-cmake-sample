mkdir build_gcw0
cd build_gcw0
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/gcw-zero/gcw-zero.cmake ..
make
cd ../cmake/gcw-zero/
sh opk_build.sh
cp project.opk ../../build_gcw0/