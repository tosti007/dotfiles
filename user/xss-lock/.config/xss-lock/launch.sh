#!/bin/bash

# Quit the script if any command fails
set -e

cd "$(dirname "$0")"

# Dim the screen after three minutes of inactivity, lock the screen two minutes later
xset s 180 120

xss-lock -n ./dim.sh -l -- ./lock.sh

