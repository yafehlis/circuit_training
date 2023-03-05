#!/usr/bin/bash -i
source ./run_scripts/ct_setup.sh
export REVERB_SERVER="127.0.0.1:${REVERB_PORT}"

tmux new-session -d -s tb_job ./run_scripts/tb_job.sh
