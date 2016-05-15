#!/usr/bin/env bash

if [ ! -z "$TRAVIS_TAG" ] && [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
  find dist -type f -exec curl -u $USER:$PASS $HOST -T {} \;
else
  echo "This will not deploy!"
fi
