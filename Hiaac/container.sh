#!/bin/bash
docker run -d --name jaime_01\
 	-v ~/Documents/work:/home/work/\
	-v ~/Documents/dataset:/home/dataset/\
	-it --gpus all\
	-p 8888:8888\
	dev/hacc:v1

