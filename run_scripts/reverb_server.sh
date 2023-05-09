#!/usr/bin/bash -i
export CUDA_VISIBLE_DEVICES="-1"
python3.9 -m circuit_training.learning.ppo_reverb_server \
   --root_dir=${ROOT_DIR}  --port=${REVERB_PORT} 2>&1 | tee ${ROOT_DIR}/reverb.log
