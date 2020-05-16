#!/bin/bash
./docker-rm.sh || true
./docker-build.sh
./docker-run.sh
