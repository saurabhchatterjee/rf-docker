#!/bin/bash

docker run \
        --rm  \
        -v $PWD/robot/tests:/home/robot/tests \
        -v $PWD/robot/results:/home/robot/results \
        <your-image-name>:<tag-name> \
        /home/robot/tests/
