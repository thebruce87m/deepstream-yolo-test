#!/bin/bash

cd /code/model/

/darknet/darknet detector demo obj.data yolov3.cfg yolov3.weights fish.mp4 -out_filename /code/output/darknet-out.mp4 -thresh 0.3