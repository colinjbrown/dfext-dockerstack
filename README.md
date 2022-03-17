# Dataflow Extension Docker Stack

This image was created for the sole purpose of development.

This is not the preferred way to develop the extension but this provides an easily built image that can be blown away to test various configurations without modifying your existing conda environment.

To build the image first clone this repository and then

`git clone https://github.com/dataflownb/dfnotebook-extension`

place the cloned extension into a subdirectory named `dfnotebook-extension` in the main directory of this dockerfile.

To build the image

`docker build -t dfext .`

to run the image this follows the process from the original Jupyter docker stack this came from at <https://github.com/jupyter/docker-stacks>

A simple command such as

`docker run -p 8888:8888 dfext`

will allow you to access the extension in the browser at `127.0.0.1:8888/lab` with the proper token authentication given from the docker console.
