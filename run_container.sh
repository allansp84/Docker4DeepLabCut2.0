#!/bin/bash


# Create the DLC directory if it does not already exist
mkdir -p $HOME/DeepLabCut # or $HOME/whateveryouwant (see the options above)

# Run the docker container
GPU=0 bash ./dlc-docker run -d -p 2351:8888 -e USER_HOME=$HOME/DeepLabCut --name containername dlc_username/dlcdocker



