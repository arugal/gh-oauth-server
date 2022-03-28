HUB?=ghcr.io
TAG?=latest

.PHONY: docker docker.push

docker:
	docker build -t $(HUB)/arugal/gh-oauth-server:$(TAG) .

docker.push: docker
	docker push $(HUB)/arugal/gh-oauth-server:$(TAG)