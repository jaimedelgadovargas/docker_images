#!/bin/bash
docker run \
	-v ~/Documents/work:/home/work/\
       	-v ~/Documents/dataset:/home/dataset/\
      	-it --gpus all\
       	-p 8882:8882\
       	server/hiaccHar:v1

