SHELL  := /bin/bash

init: up
	git submodule init && git submodule update

restart: kill up status

kill:
	docker-compose kill && docker-compose rm -vf

up:
	docker-compose up -d --remove-orphans

status:
	docker-compose ps && docker-compose logs --tail=100

logs:
	docker-compose logs -f

pull:
	docker-compose pull
