# About

NVIDIA Deepstream test to compare yoloV3 performance vs darknet.

Model from here: https://github.com/rocapal/fish_detection


# Build the docker file


## PC

```bash
./scripts/build-docker-pc.sh
```


# Run the docker image

```bash
./scripts/run-docker.sh
```


# Run the demos (within the docker)

## Download the weights

```bash
./download_weights.sh
```

## Compile the yolo plugin

```bash
./yolo_plugin_compile.sh
```

## Create our test video

```bash
./create_video.sh
```

## Run the file through deepstream

```bash
./run-deepstream.sh
```

## Run the file through darknet

```bash
./run-darknet.sh
```

# Observe the output files (Outside of docker)

```bash
vlc ./output/darknet-out.mp4
vlc ./output/deepstream-out.mp4
```