# ExifTool CLI Docker Container
[![Create and publish a Docker image](https://github.com/GewoonJaap/exiftool-docker/actions/workflows/publish.yml/badge.svg)](https://github.com/GewoonJaap/exiftool-docker/actions/workflows/publish.yml)

This repository provides a Docker container for the ExifTool CLI, allowing you to interact with the ExifTool CLI without installing it on your machine.

## Prerequisites

- Docker installed on your machine.

## Building the Docker Image

To build the Docker image, run the following command:

```sh
docker build --build-arg TARGETARCH=$(uname -m) -t exiftool-docker:latest .
```

This command will build the Docker image for the appropriate architecture (amd64, arm, or arm64).

## Running the Docker Container
- Run the docker container with the following command:
```sh
docker run --rm -v $(pwd):/data exiftool-docker:latest
```

This command will run the ExifTool CLI in the Docker container and mount the current directory to the `/data` directory in the container.
Now attach a console to the Docker container and run the ExifTool CLI commands as you would on your local machine.

### Example command
```sh
./exiftool "-FileCreateDate<FileCreateDate" "-FileModifyDate<FileCreateDate" -ext .mp4 -ext .jpg -ext .jpeg -ext .heic -ext .MOV -ext .png <PHOTO DIR>
```

```sh
./exiftool "-FileCreateDate<CreateDate" "-FileModifyDate<CreateDate" -ext .mp4 -ext .jpg -ext .jpeg -ext .heic -ext .MOV -ext .png <PHOTO DIR>
```