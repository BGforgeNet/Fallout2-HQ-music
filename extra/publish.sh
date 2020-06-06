#!/bin/bash

set -xeu -o pipefail

# release?
if [ -n "$TRAVIS_TAG" ]; then # tag found: releasing
  export version="$TRAVIS_TAG"
else
  export version="git$TRAVIS_COMMIT"
fi

for q in hq uhq; do
  fname="fallout12_${q}_music.zip"
  cd "$q"
  zip * "$fname"
  mv "$fname" ..
  cd ..
done
