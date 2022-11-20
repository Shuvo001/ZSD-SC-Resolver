#!/usr/bin/env bash

PYTHON=${PYTHON:-"python"}

CONFIG=$1
CHECKPOINT=$2
GPUS=$3

$PYTHON -m torch.distributed.launch --master_port 10008 --nproc_per_node=$GPUS \
    $(dirname "$0")/test_confMatrix.py $CONFIG $CHECKPOINT --launcher pytorch ${@:4}
