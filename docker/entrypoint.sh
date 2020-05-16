#!/bin/bash

touch LOG.TXT

# Building CPE
cd src/
echo " ---> Building CPE..." 
xvfb-run -a wine64 wineconsole --backend=curses BUILD_CPE.BAT
cd ..

# Building EXE
echo " ---> Building EXE..."
/docker-entrypoint.sh

/bin/bash