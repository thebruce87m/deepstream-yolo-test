#!/bin/bash

xhost +

docker run \
--gpus all \
-it \
--rm \
--net=host \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $(pwd):/code/ \
-e DISPLAY=$DISPLAY \
-w /code/model \
ds-test/rocapal