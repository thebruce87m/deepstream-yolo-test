#!/bin/bash

# Stop on error
set -e

cd /opt/nvidia/deepstream/deepstream-5.1/sources/objectDetector_Yolo

# Change the number of classes in the plugin
sed -i 's/NUM_CLASSES_YOLO = 80/NUM_CLASSES_YOLO = 1/' nvdsinfer_custom_impl_Yolo/nvdsparsebbox_Yolo.cpp

# Build the yolo plugin
make -C nvdsinfer_custom_impl_Yolo