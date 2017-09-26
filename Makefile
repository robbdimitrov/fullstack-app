# Makefile

all: build

default: build

build:
	docker-compose build

build-no-cache:
	docker-compose build --no-cache

run:
	docker-compose up

stop:
	docker-compose down

kill:
	docker-compose kill

build-run:
	docker-compose up --build

clean: stop kill
	-docker rm -v $$(docker ps -a -q -f status=exited)
	-docker rmi $$(docker images -q -f "dangling=true")
	-docker rmi $$(docker images -q)
