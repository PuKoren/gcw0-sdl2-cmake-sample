# Inspired from https://github.com/christopho/solarus/blob/master/cmake/gcw-zero/opk_build.sh
#!/bin/sh
cd `dirname $0`
if [ -z "$1" ]; 
  then
    LD_LIBRARY_PATH=./libs ./project
  else 
    #with selector
    LD_LIBRARY_PATH=./libs ./project $(dirname $1)
fi
