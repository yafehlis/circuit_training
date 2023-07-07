for i in $(seq 1 2); do
  docker run --network host -d \
  --rm -it -v $(pwd)/circuit_training:/workspace -w /workspace/ circuit_training:corepy39  \
python3 -m circuit_training.learning.ppo_collect \
  --root_dir=${ROOT_DIR} \
  --replay_buffer_server_address=${REVERB_SERVER} \
  --variable_container_server_address=${REVERB_SERVER} \
  --task_id=${i} \
  --netlist_file=${NETLIST_FILE} \
  --init_placement=${INIT_PLACEMENT} \
  --global_seed=${GLOBAL_SEED} \
  --logtostderr
