#!/bin/sh
cp -v ../../build_gcw0/$1 ./opk-data/
cp -rv ../../data ./opk-data/data
mksquashfs opk-data/* ../../build_gcw0/$1.opk
rm ./opk-data/$1