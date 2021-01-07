#!/bin/bash

cd "$(dirname "$0")"

pkill i3wsr

i3wsr --config config.toml

