#!/bin/bash

set -xeu -o pipefail

# release?
if [ -n "$TRAVIS_TAG" ]; then # tag found: releasing
  export version="$TRAVIS_TAG"
else
  export version="git$TRAVIS_COMMIT"
fi

zip -r "${mod_name}_${version}.zip" data
