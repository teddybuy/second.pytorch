#!/bin/bash
set -e
DPATH=/media/1t/data/
NV_GPU=0 nvidia-docker run -it --ipc=host --label second -v $DPATH:$DPATH --rm  -p 0.0.0.0:6006:6006 -p 8888:8888 --runtime=nvidia python36-pytorch41-second bash
