#!/bin/bash

set -xeu -o pipefail

short_sha="$(git rev-parse --short HEAD)"
version="git$short_sha"
if [[ -n "${GITHUB_REF-}" ]]; then
    if echo "$GITHUB_REF" | grep "refs/tags"; then # tagged
        # shellcheck disable=SC2001  # sed is more readable
        version="$(echo "$GITHUB_REF" | sed 's|refs\/tags\/||')"
    fi
fi

for q in hq lossless_wav lossless_wavpack lossless_flac; do
    fname="fallout_music_${q}_${version}.zip"
    cd "$q"
    rm -f readme.md
    for f in 03wrldmp.*; do
        cp -- "$f" "03world${f#03wrldmp}"
    done
    zip "$fname" ./*
    mv "$fname" ..
    cd ..
done
