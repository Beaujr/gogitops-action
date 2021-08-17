#!/bin/sh
PR_ID=$(echo $GITHUB_REF | tr -dc '0-9')
gogitops -user=github-actions -token=$2 -pullrequest="$1/pull/$PR_ID"