#!/usr/bin/env bash

if [ "$TRAVIS_BRANCH" = "master" ] && [ ! -z "$TRAVIS_TAG" ]; then
  find dist -type f -exec curl -u $USER:$PASS $HOST -T {} \;
else
  echo "This will not deploy!"
fi
