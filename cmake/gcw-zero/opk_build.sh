#!/bin/sh
rm -rf project.opk
cp -v ../../build_gcw0/project ./opk-data/
cp -v ../../data ./opk-data/
mksquashfs opk-data project.opk
rm -rf ./opk-data/project
