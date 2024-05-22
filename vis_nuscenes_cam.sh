#!/bin/bash

DATA_DIR="./data"
# there should be ${DATA_DIR}/full_v1.0/
# and also ${DATA_DIR}/mini

MODEL_NAME="8x5_5e-4_rgb12_22:43:46"

EXP_NAME="rgb12" # evaluate rgb00 model

python vis_nuscenes.py \
       --batch_size=1 \
       --exp_name=${EXP_NAME} \
       --dset='mini' \
       --data_dir=$DATA_DIR \
       --img_dir='vis/cam' \
       --log_dir='logs_nuscenes_bevseg' \
       --init_dir="checkpoints/${MODEL_NAME}" \
       --res_scale=2 \
       --device_ids=[0]
