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