docker run --network host \
     --rm -it -v $(pwd):/workspace -w /workspace/ circuit_training:corepy39  \
     python3.9 -m circuit_training.learning.eval \
       --root_dir=${ROOT_DIR} \
       --variable_container_server_address=${REVERB_SERVER} \
       --netlist_file=${NETLIST_FILE} \
       --init_placement=${INIT_PLACEMENT} \
       --global_seed=${GLOBAL_SEED} \
       --output_placement_save_dir=./
