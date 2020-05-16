#!/bin/bash

cd ..
docker run -ti --env=SDL_VIDEODRIVER=dummy -v $(pwd)/src:/root/.wine/drive_c/src --name psyq-builder psyq-builder:latest

