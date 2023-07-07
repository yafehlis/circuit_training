#!/usr/bin/bash -i
export CUDA_VISIBLE_DEVICES="-1"
python3 -m circuit_training.learning.eval \
  --root_dir=${ROOT_DIR} \
  --variable_container_server_address=${REVERB_SERVER} \
  --netlist_file=${NETLIST_FILE} \
  --init_placement=${INIT_PLACEMENT}  2>&1 | tee ${ROOT_DIR}/eval.log
