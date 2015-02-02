gcw0-sdl2-cmake-sample
======================

A bootstrap SDL2 project for the gcw0 using cmake

This bootstrap project is inspired from the Solarus Engine repository: https://github.com/christopho/solarus  
I use the exact same structure for cmake + some bash scripts to automate the build

# Compilation steps

## 1. Project naming
Write your project name in the following locations
  1. *CMakeLists.txt*: line 2, replace PROJECT by your project name  
  2. *cmake/gcw-zero/opk-data/default.gcw0.desktop*: line 2 and 5, replace Project by your project name (Exec is the executable name, lowercase)  
  3. Replace *cmake/gcw-zero/opk-data/image.png* with your game logo

## 2. GCW Build and auto upload to your handheld
  1. Make sure your GCW0 is accessible from your computer (with a ping or something)
  2. Run ./build-gcw.sh *PROJECT_NAME* *GCW0_IP* (sample: ./build-gcw.sh *ikaruga* *192.168.1.12*)
  3. Launch the application on the GCW0
You can find the generated opk into the *build_gcw0* folder

# Manual compilation
You can find the various build steps for the gcw0 (from cmake to generating opk) in the *build-gcw.sh* file.

If you just want to compile the binary and not package the game, run
```bash
  cmake -DCMAKE_TOOLCHAIN_FILE=cmake/gcw-zero/gcw-zero.cmake .
  make
```