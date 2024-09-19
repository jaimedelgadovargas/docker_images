#!/bin/bash
docker run \
	-v ~/Documents/work:/home/work/\
       	-v ~/Documents/dataset:/home/dataset/\
      	-it --gpus all\
       	-p 8887:8887\
       	server/hiacc:v1

