#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nicehash/nheqminer.git
cd ../../../nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)
./nheqminer_cpu -b
