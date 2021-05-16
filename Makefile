COMMIT_ID := $(shell git log | head -n 1|awk '{print $$2}'| head -c 8)
all: build login tags push
build:
	docker build -t automatizacion:$(COMMIT_ID) .
login:
	docker login -u javiermanzanares -p Mariquita10
tags:
	docker tag automatizacion:$(COMMIT_ID) javiermanzanares/automatizacion:$(COMMIT_ID)
	docker tag automatizacion:$(COMMIT_ID) javiermanzanares/automatizacion:latest
push:
	docker push javiermanzanares/automatizacion:$(COMMIT_ID)
	docker push javiermanzanares/automatizacion:latest

