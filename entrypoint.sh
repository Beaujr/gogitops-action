#!/bin/bash
PR_ID=$(echo $GITHUB_REF | tr -dc '0-9')
if [[ -z "${PR_ID}" ]]; then
  gogitops -user=github-actions -token=$1 -repo="github.com/$GITHUB_REPOSITORY" -sm=true
else
  gogitops -user=github-actions -token=$1 -pullrequest="github.com/$GITHUB_REPOSITORY/pull/$PR_ID"
fi
