#!/bin/sh
PR_ID=$(echo $GITHUB_REF | tr -dc '0-9')
echo "$1/pull/$PR_ID"
gogitops -user=github-actions -token=$2 -pullrequest="$1/pull/$PR_ID"