sudo docker run --network host \
     --rm -it -v $(pwd):/workspace -w /workspace/ circuit_training:core  \
     python3 -m circuit_training.learning.train_ppo \
       --root_dir=${ROOT_DIR} \
       --replay_buffer_server_address=${REVERB_SERVER} \
       --variable_container_server_address=${REVERB_SERVER} \
       --sequence_length=134 \
       --num_iterations=200 \
       --netlist_file=${NETLIST_FILE} \
       --init_placement=${INIT_PLACEMENT} \
       --global_seed=${GLOBAL_SEED}
