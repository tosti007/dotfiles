#!/bin/bash

# Source https://gist.github.com/davejamesmiller/1965569
ask() {
  # http://djm.me/ask
  local prompt default REPLY

  while true; do
    if [ "${2:-}" = 'Y' ]; then
      prompt='Y/n'
      default=Y
    elif [ "${2:-}" = 'N' ]; then
      prompt='y/N'
      default=N
    else
      prompt='y/n'
      default=
    fi

    # Ask the question (not using "read -p" as it uses stderr not stdout)
    echo -n "$1 [$prompt] "

    # Read the answer (use /dev/tty in case stdin is redirected from somewhere
    # else)
    read -r REPLY </dev/tty

    # Default?
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi

    # Check if the reply is valid
    case $REPLY in
    Y* | y*) return 0 ;;
    N* | n*) return 1 ;;
    q*) exit 0 ;;
    esac
  done
}

