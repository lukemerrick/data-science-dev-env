# Docker
This directory handles the generation of a Dockerfile satisfying the user's
requirements.

We use the Deepo tooling to generate a Dockerfile for a GPU-enabled 
deep-learning-ready image, and then we append additional install code to handle
user requirements. Once the Dockerfile is built, it should not need to be rebuilt
unless the user wants to update to the latest version of the deep learning
frameworks that are installed in the Dockerfile.

More info: https://hub.docker.com/r/ufoym/deepo/