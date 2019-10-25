#!/bin/bash

docker run \
        --rm  \
        -v ~/projects/rf-docker/robot/tests:/home/robot/tests \
        -v ~/projects/rf-docker/robot/results:/home/robot/results \
        rfdocker-saurabh:latest \
        /home/robot/tests/
