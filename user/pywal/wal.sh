#!/usr/bin/env bash

cd "$(dirname "$0")"

alpha=`sed -En '/alpha/ { s/.*"([0-9]+)".*/\1/; p; }' "$1"`
shift

wal -a "$alpha" -o ./hooks.sh $@

