#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run pulseaudio -D&
run compton &
run /home/dde/.fehbg &
