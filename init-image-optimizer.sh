#!/bin/bash

if [ ! -d $1 ]
then echo $1 is not a directory
exit
else
echo "for the IN"
pushd $1
DIR_IN=$PWD
echo $DIR_IN
popd
fi

if [ ! -d $2 ]
then echo $2 is not a directory
exit
else

echo "for the OUT"
pushd $2
DIR_OUT=$PWD
echo $DIR_OUT
popd
fi

docker build -t imageoptim .
docker run -v $DIR_IN:/in -v $DIR_OUT:/out  -d imageoptim