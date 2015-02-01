if [ -z ${1+x} ]; then
  echo "'$1' is unset, please provide the project name";
  exit;
fi

mkdir -p build_gcw0
cd build_gcw0
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/gcw-zero/gcw-zero.cmake ..
make

cd ../cmake/gcw-zero/
sh opk_build.sh $1
cp "$1.opk" ../../build_gcw0/

if [ -z ${2+x} ]; then
  echo "'$2' is unset, please provide the GCW0's IP";
else
  echo "Uploading OPK...";
  scp ../../build_gcw0/"$1.opk" root@$2:/media/data/apps/
fi
