#!/usr/bin/env bash
# Allows controlling speaker volume and mic mute/unmute through media keys

MAXVOLUME=100

device=$1
action=$2

if [[ $device = speaker ]]; then
  if [[ $action = toggle ]]; then
    pactl set-sink-mute @DEFAULT_SINK@ toggle
  elif [[ $action = inc ]]; then
    # get current volume
    SINK=$(pactl list short sinks | grep RUNNING | awk '{print $1}')
    NOW=$( pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )
    # increase if possible
    if [[ $NOW -lt $MAXVOLUME ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ +10%
    fi
  elif [[ $action = dec ]]; then
    pactl set-sink-volume @DEFAULT_SINK@ -10%
  fi
elif [[ $device = mic ]]; then
  if [[ $action = toggle ]]; then
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
  fi
fi

