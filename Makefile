score: PR_ID=$(shell echo $(GITHUB_REF) | tr -dc '0-9')
score:
	curl -X GET \
	https://api.gogitops.cf/submit/$(GITHUB_REPOSITORY)/pull/1 \
	-H 'apikey: $(GITOPS_API_KEY)' \
	-H 'user: github-actions' \
	-H 'token: $(GITHUB_TOKEN)'