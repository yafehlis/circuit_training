#!/usr/bin/bash -i
source ./run_scripts/ct_setup.sh
export REVERB_SERVER="<ip>:${REVERB_PORT}"

./run_scripts/start_collect_jobs.sh 13 25
tmux attach -t collect_job_20
