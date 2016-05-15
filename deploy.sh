#!/usr/bin/env bash
## find dist -type f -exec curl -u $USER:$PASS ftp://ftp.byethost7.com/my-librarian.is-best.net/htdocs/ -T {} \;
#ls

if [ ! -z "$TRAVIS_TAG" ] && [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
  ls
else
  echo "This will not deploy!"
fi
