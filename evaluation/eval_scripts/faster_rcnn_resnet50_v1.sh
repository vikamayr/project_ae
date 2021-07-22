#!/bin/bash
PIPELINE_CONFIG_PATH="./object_detection/checkpoints/detection/faster_rcnn_resnet50_v1_640x640_coco17_tpu-8/pipeline.config"
MODEL_DIR="./object_detection/checkpoints/detection/faster_rcnn_resnet50_v1_640x640_coco17_tpu-8/checkpoint/"
CHECKPOINT_DIR=${MODEL_DIR}
python ./object_detection/model_main_tf2.py \
  --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
  --model_dir=${MODEL_DIR} \
  --checkpoint_dir=${CHECKPOINT_DIR} \
  --eval_timeout=5 \
  --alsologtostderr