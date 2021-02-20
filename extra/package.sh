#!/bin/bash

set -xeu -o pipefail

short_sha="$(git rev-parse --short HEAD)"
version="git$short_sha"
if [[ ! -z "${GITHUB_REF-}" ]]; then
  if echo "$GITHUB_REF" | grep "refs/tags"; then # tagged
    version="$(echo $GITHUB_REF | sed 's|refs\/tags\/||')"
  fi
fi

for q in hq uhq_wav uhq_wavpack; do
  fname="fallout_${q}_music_${version}.zip"
  cd "$q"
  rm -f readme.md
  zip "$fname" *
  mv "$fname" ..
  cd ..
done
