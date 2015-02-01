#!/bin/sh
cp -v ../../build_gcw0/$1 ./opk-data/
cp -v ../../data ./opk-data/
mksquashfs opk-data ../../build_gcw0/$1.opk
rm ./opk-data/$1