#!/usr/bin/bash -i
source ./run_scripts/ct_setup.sh
export REVERB_SERVER="127.0.0.1:${REVERB_PORT}"

mkdir -p ${ROOT_DIR}
chmod 777 -R ${ROOT_DIR}

tmux new-session -d -s reverb_server  ./run_scripts/reverb_server.sh
tmux new-session -d -s train_job ./run_scripts/train_job.sh
tmux new-session -d -s eval_job ./run_scripts/eval_job.sh
tmux attach -t reverb_server
