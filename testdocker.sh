#!/bin/bash

docker run --mount type=bind,src="$(pwd)",target=/src \
        --workdir /src --network=host --device=/dev/kfd --device=/dev/dri \
        --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt \
        seccomp=unconfined -it circuit_training:corepy39_rocm bash

