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
    # Only the wav set is uncompressed: the flac and wavpack files are compressed already, though named .wav for sfall.
    zip_args=(-0)
    if [[ "$q" == lossless_wav ]]; then
        zip_args=()
    fi
    cd "$q"
    rm -f readme.md
    for f in 03wrldmp.*; do
        cp -- "$f" "03world${f#03wrldmp}"
    done
    zip "${zip_args[@]}" "$fname" ./*
    mv "$fname" ..
    cd ..
done
