#!/usr/bin/bash -i
source ./run_scripts/ct_setup.sh
export REVERB_SERVER="127.0.0.1:${REVERB_PORT}"

./run_scripts/start_collect_jobs.sh 0 6
tmux attach -t collect_job_00
