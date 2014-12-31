gcw0-sdl2-cmake-sample
======================

A bootstrap SDL2 project for the gcw0 using cmake

This bootstrap project is inspired from the Solarus Engine repository: https://github.com/christopho/solarus  
I use the exact same structure for cmake


# How to compile

To compile for your current OS, run cmake the classic way:

    cmake .
    
To compile for the GCW0, run

    cmake -DCMAKE_TOOLCHAIN_FILE=cmake/gcw-zero/gcw-zero.cmake .

To generate the .opk file to be uploaded to your GCW0, run

    sh cmake/gcw-zero/opk_build.sh

You can find the various build steps for the gcw0 (from cmake to generating opk) in the build_gcw.sh file.  


Files to edit for your project
 - cmake/gcw-zero/image.png (put your app image here)
 - cmake/gcw-zero/default.gcw0.desktop (put your app infos here)
 - CMakeLists.txt (change project name)
 - cmake/gcw-zero/opk_build.sh (change 'project' to your project name set in cmake to match the binary)
