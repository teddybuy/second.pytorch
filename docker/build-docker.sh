nvidia-docker build -f Dockerfile-python36-pytorch41-second -t python36-pytorch41-second-step1 .
NV_GPU=0 nvidia-docker run python36-pytorch41-second-step1 bash -c "cd /SparseConvNet && git checkout b596b10752136cd805b3b3f0507ac2a2e2d414fc && chmod +x build.sh && ./build.sh && cd .."
export CONTAINER_ID=`docker ps -lq`
docker commit $CONTAINER_ID python36-pytorch41-second
