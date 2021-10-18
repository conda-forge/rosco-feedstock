#!/bin/bash

python setup.py install

mkdir ROSCO/build
cd ROSCO/build 
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} ..
make install