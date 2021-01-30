#!/bin/bash

cd "$(dirname "$0")"

pkill xss-lock

# Dim the screen after three minutes of inactivity, lock the screen two minutes later
xset s 300 120

xss-lock -n $(realpath ./dim.sh) -l -- $(realpath ./lock.sh)

