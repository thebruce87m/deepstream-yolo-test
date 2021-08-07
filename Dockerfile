ARG build_image

FROM ${build_image}

RUN apt update && apt upgrade -y

#
# Need to build on jetson
#
RUN apt install -y 

#
# GStreamer Dependences
#
RUN apt install -y \
build-essential \
wget \
libgstreamer-plugins-base1.0-dev \
libgstreamer1.0-dev    \
libgstrtspserver-1.0-dev \
libx11-dev \
libjson-glib-dev \
python3-opencv \
ffmpeg

#
# Set the CUDA version for builds
#
ARG cuda_version
ENV CUDA_VER ${cuda_version}

#
# Install darknet
#

WORKDIR /

RUN git clone https://github.com/AlexeyAB/darknet.git

WORKDIR /darknet

RUN sed -i 's/GPU=0/GPU=1/' Makefile && \
sed -i 's/CUDNN=0/CUDNN=1/' Makefile && \
sed -i 's/OPENCV=0/OPENCV=1/' Makefile

RUN make -j4