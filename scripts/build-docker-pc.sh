#!/bin/bash

BASE_IMAGE=nvcr.io/nvidia/deepstream:6.1.1-devel

docker build . \
--build-arg build_image=${BASE_IMAGE} \
--build-arg cuda_version=11.7.1 \
-t ds-test/rocapal