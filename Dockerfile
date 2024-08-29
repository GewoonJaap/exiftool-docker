# Use an official Alpine as a parent image
FROM alpine:latest

# Set the working directory
WORKDIR /usr/src/app

# Install dependencies
RUN apk add --no-cache \
    curl \
    unzip \
    sudo \
    git \
    bash

RUN git clone https://github.com/exiftool/exiftool.git /usr/src/app/exiftool

# Set the entrypoint
CMD ["bash"]