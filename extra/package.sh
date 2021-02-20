#!/bin/bash

set -xeu -o pipefail

# release?
if [ -n "$TRAVIS_TAG" ]; then # tag found: releasing
  export version="$TRAVIS_TAG"
else
  export version="git$TRAVIS_COMMIT"
fi

for q in hq hq_ebur128 uhq uhq_ebur128; do
  fname="fallout12_${q}_music_${version}.zip"
  cd "$q"
  zip "$fname" *
  mv "$fname" ..
  cd ..
done
