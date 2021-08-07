#!/bin/bash

ffmpeg -loop 1 -i /code/images/2.jpg -pix_fmt yuv420p -t 10 /code/model/fish.mp4