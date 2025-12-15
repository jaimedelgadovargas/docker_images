#!/bin/bash
docker run -d --name m4_01\
 	-v ~/Documents/work:/home/work/\
	-v ~/Documents/dataset:/home/dataset/\
	-it --gpus all\
	-p 8882:8882\
	server/hiac_har:v1

