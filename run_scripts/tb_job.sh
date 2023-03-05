#!/usr/bin/bash -i
tensorboard dev upload --logdir ${ROOT_DIR} 2>&1 | tee ${ROOT_DIR}/tb.log
