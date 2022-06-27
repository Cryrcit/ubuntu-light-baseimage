NAME = cryrcit/ubuntu-light-baseimage-multi

.PHONY: build build-nocache

build:
	docker build -t $(NAME) --rm .

build-nocache:
	docker build -t $(NAME) --no-cache --rm .
