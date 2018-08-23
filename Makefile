define PROJECT_HELP_MSG
Usage:
    make help                   show this message
    make build                  build docker image
    make push					 push container
    make run					 run benchmarking container
    make jupyter                run jupyter notebook inside container
endef
export PROJECT_HELP_MSG
PWD:=$(shell pwd)
dockerhub:=
image_name:=$(dockerhub)/base_ubuntu

help:
	echo "$$PROJECT_HELP_MSG" | less

build:
	docker build -t $(image_name) Docker


run:
	docker rexec -i -t $(image_name) /bin/bash

push:
	docker push $(image_name)



.PHONY: help build push
