#!/bin/bash
docker run -it --rm \
        --device /dev/dri \
        --device /dev/kfd \
        --device /dev/infiniband \
        --network host \
        --ipc host \
        --group-add video \
        --cap-add SYS_PTRACE \
        --security-opt seccomp=unconfined \
        --privileged \
        -v $(pwd):/aiter \
        --shm-size 256G \
        --name dev-aiter \
        dev-aiter /bin/bash
