#!/bin/bash

docker run \
        --rm  \
        -v $PWD/robot/tests:/home/robot/tests \
        -v $PWD/robot/results:/home/robot/results \
        rfdocker-saurabh:latest \
        /home/robot/tests/
