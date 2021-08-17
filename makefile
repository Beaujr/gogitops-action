REGISTRY := docker.io
APP_NAME := beaujr/gogitops
BUILD_TAG := action
PLATFORM := linux/amd64

check-docker-credentials:
ifndef DOCKER_USER
	$(error DOCKER_USER is undefined)
else
  ifndef DOCKER_PASS
	$(error DOCKER_PASS is undefined)
  endif
endif

docker-login: check-docker-credentials
	@docker login -u $(DOCKER_USER) -p $(DOCKER_PASS) $(REGISTRY)

docker_buildx: docker-login
docker_buildx: DOCKERFILE=Dockerfile
docker_buildx: PUSH=true
docker_buildx: TYPE=image
docker_buildx:
	docker buildx build \
		--build-arg VCS_REF=$(GIT_COMMIT) \
		--tag $(REGISTRY)/$(APP_NAME):$(BUILD_TAG) \
		--platform $(PLATFORM) \
		--output "type=$(TYPE),push=$(PUSH)" \
		--file Dockerfile \
		./