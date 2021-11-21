VERSION := $(shell git describe --tags --always --dirty)
REGISTRY := evanfordocker/init-nginx

image:
	docker build -t $(REGISTRY) .

push:
	docker image push $(REGISTRY):$(VERSION)
