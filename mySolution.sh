#!/bin/bash

pathToGenerator=src/generateSecret.sh

mkdir secretDir/

rm -r maliciousFiles

touch secretDir/.secret

chmod 600 secretDir/.secret

touch Important
ln -s Important important.link

exec $pathToGenerator
