#!/bin/bash

docker run \
        --rm  \
        -v $PWD/atest/tests:/home/robot/tests \
        -v $PWD/atest/results:/home/robot/results \
        rf-sel:latest \
        /home/robot/tests/
