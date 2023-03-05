#!/usr/bin/bash -i
export ROOT_DIR=./logs/run_03
export REVERB_PORT=8008
export REVERB_SERVER="127.0.0.1:${REVERB_PORT}"
export NUM_ITERATION=200
export NUM_EPISODE_PER_ITERATION=1024
export BATCH_SIZE=1024
#export NETLIST_FILE=/mnt/mwoo/ct_project1/08252022/circuit_training/nvdla/g500_ub5_nruns10_c5_r3_v3_rc1/netlist.pb.txt
#export INIT_PLACEMENT=/mnt/mwoo/ct_project1/08252022/circuit_training/nvdla/g500_ub5_nruns10_c5_r3_v3_rc1/legalized.plc
export NETLIST_FILE=/mnt/mwoo/ct_project1/08252022/circuit_training/ariane/g500_ub5_nruns10_c5_r3_v3_rc1/netlist.pb.txt
export INIT_PLACEMENT=/mnt/mwoo/ct_project1/08252022/circuit_training/ariane/g500_ub5_nruns10_c5_r3_v3_rc1/legalized.plc

mkdir -p ${ROOT_DIR}

#tmux new-session -d -s reverb_server  ./run_scripts/reverb_server.sh
#tmux new-session -d -s train_job ./run_scripts/train_job.sh
#tmux new-session -d -s collect_job_00 ./run_scripts/collect_job_00.sh
#tmux new-session -d -s eval_job ./run_scripts/eval_job.sh
#tmux new-session -d -s collect_job_01 ./run_scripts/collect_job_01.sh
#tmux new-session -d -s collect_job_02 ./run_scripts/collect_job_02.sh
#tmux new-session -d -s tb_job ./run_scripts/tb_job.sh
./run_scripts/start_collect_jobs.sh 20 25
tmux attach -t reverb_server
