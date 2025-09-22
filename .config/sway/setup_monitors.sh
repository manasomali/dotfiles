#!/bin/bash

outputs=$(swaymsg -t get_outputs | jq -r '.[] | select(.active) | .name')

FM="eDP-1"
SM="eDP-1"

if echo "$outputs" | grep -q "HDMI-A-1"; then
    FM="HDMI-A-1"
fi

for i in {1..9}; do
    swaymsg "workspace $i output $FM"
done

for i in {10..20}; do
    swaymsg "workspace $i output $SM"
done

