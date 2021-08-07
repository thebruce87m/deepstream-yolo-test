# About

NVIDIA Deepstream test to compare yoloV3 performance vs darknet.

Model from here: https://github.com/rocapal/fish_detection


# Build the docker file


## PC

```
./scripts/build-docker-pc.sh
```


# Run the docker image

```
./scripts/run-docker.sh
```


# Run the demos (within the docker)

## Download the weights

```
./download_weights.sh
```

## Compile the yolo plugin

```
./yolo_plugin_compile.sh
```

## Run the file through deepstream

```
./run-deepstream.sh
```

## Run the file through darknet

```
./run-darknet.sh
```