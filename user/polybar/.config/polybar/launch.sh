#!/bin/bash

pkill polybar

polybar top &
ln -sf /tmp/polybar_mqueue.$! /tmp/polybar_mqueue_top

