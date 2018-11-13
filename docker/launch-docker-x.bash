#!/bin/bash
set -e
DPATH=/media/1t/data/
SECOND_PATH=`git rev-parse --show-toplevel`
NV_GPU=0 nvidia-docker run -it --ipc=host --label second -v $DPATH:$DPATH -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro --rm -v $HOME:$HOME --user $UID -w $SECOND_PATH --net=host -v /root/.Xauthority:/root/.Xauthority:rw -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=$DISPLAY  -e PYTHONPATH=$SECOND_PATH --runtime=nvidia python36-pytorch41-second bash
