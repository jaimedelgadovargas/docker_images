#!/bin/bash
docker run \
	-v ~/Documents/work:/home/work/\
       	-v ~/Documents/dataset:/home/dataset/\
      	-it --gpus all\
       	-p 8880:8880\
       	dev/timegan:v1

