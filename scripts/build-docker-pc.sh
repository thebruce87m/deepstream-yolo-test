#!/bin/bash

BASE_IMAGE=nvcr.io/nvidia/deepstream:5.1-21.02-devel

docker build . \
--build-arg build_image=${BASE_IMAGE} \
--build-arg cuda_version=11.1 \
-t ds-test/rocapal