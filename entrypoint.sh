#!/bin/bash
PR_ID=$(echo $GITHUB_REF | tr -dc '0-9')
echo "$GITHUB_REPOSITORY/pull/$PR_ID"
#printenv
gogitops -user=github-actions -token=$1 -pullrequest="$GITHUB_REPOSITORY/pull/$PR_ID"