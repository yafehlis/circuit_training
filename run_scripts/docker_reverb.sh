docker run --rm -it -p 8008:8008 \
     --rm -it -v $(pwd):/workspace -w /workspace/ circuit_training:core  \
     python3 -m circuit_training.learning.ppo_reverb_server \
       --global_seed=${GLOBAL_SEED} \
       --root_dir=${ROOT_DIR}  \
       --port=${REVERB_PORT}
