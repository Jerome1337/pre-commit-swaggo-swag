#!/bin/sh

swag init > /dev/null 2>&1

git diff --no-patch --exit-code docs

if [ $? -eq 1 ]; then
    echo "Docs differs, please re-add it to your commit"

    exit 1
fi
