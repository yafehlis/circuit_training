#!/usr/bin/bash -i
python3 -m circuit_training.learning.train_ppo \
  --root_dir=${ROOT_DIR} \
  --replay_buffer_server_address=${REVERB_SERVER} \
  --variable_container_server_address=${REVERB_SERVER} \
  --num_iterations=${NUM_ITERATION} \
  --num_episodes_per_iteration=${NUM_EPISODE_PER_ITERATION} \
  --use_gpu \
  --global_batch_size=${BATCH_SIZE} \
  --netlist_file=${NETLIST_FILE} \
  --init_placement=${INIT_PLACEMENT} 2>&1 | tee ${ROOT_DIR}/train.log

