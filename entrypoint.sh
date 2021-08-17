#!/bin/sh
echo "hello"
./gogitops -user=github-actions -token=$2 -pullrequest="$1/pull/$3"