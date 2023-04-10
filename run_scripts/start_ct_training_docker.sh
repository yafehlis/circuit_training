#!/bin/bash

source ./run_scripts/ct_setup.sh
export REVERB_SERVER="127.0.0.1:${REVERB_PORT}"

mkdir -p ${ROOT_DIR}
chmod 777 -R ${ROOT_DIR}

#./run_scripts/docker_reverb.sh
tmux new-session -d -s reverb_server_docker ./run_scripts/docker_reverb.sh
tmux new-session -d -s train_job_docker ./run_scripts/docker_train.sh
tmux new-session -d -s eval_job_docker ./run_scripts/docker_eval.sh
tmux new-session -d -s collect_job_docker ./run_scripts/docker_collec.sh
tmux attach -t reverb_server_docker
