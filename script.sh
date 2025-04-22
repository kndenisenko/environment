#!/bin/bash

# Get Load Average from /proc/loadavg
loadavg=$(awk '{print $1, $2, $3}' /proc/loadavg)
first_value=$(echo $loadavg | awk '{print $1}' | tr ',' '.')

# Set threshold
threshold=1.0

# Compare LA with threshold
if awk "BEGIN {exit !($first_value < $threshold)}"; then
    # If LA < threshold - show only LA1
    echo " 󰾆 $first_value"
    style="fg:color_green bg:color_bg1"
else
    # If LA > threshold - show only LA1, LA5 LA15
    echo "  $loadavg"
    style="fg:color_red bg:color_bg1"
fi


# [custom.loadavg]
# command = "/path/to/script.sh"
# when = ''
# format = '[$output]($style)'
# style = '$style'