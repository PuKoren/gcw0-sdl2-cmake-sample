#!/bin/sh
rm -rf $1.opk
cp -v ../../build_gcw0/$1 ./opk-data/
cp -v ../../data ./opk-data/
mksquashfs opk-data $1.opk
rm -rf ./opk-data/$1
