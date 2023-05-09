#!/usr/bin/bash -i
export CUDA_VISIBLE_DEVICES="-1"
python3.9 -m circuit_training.learning.ppo_collect \
  --root_dir=${ROOT_DIR} \
  --replay_buffer_server_address=${REVERB_SERVER} \
  --variable_container_server_address=${REVERB_SERVER} \
  --task_id=3 \
  --netlist_file=${NETLIST_FILE} \
  --init_placement=${INIT_PLACEMENT}
