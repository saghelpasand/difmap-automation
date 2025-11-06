#!/bin/bash
# Example usage: ./run_difmap.sh mysource.uvf
# Runs Difmap in non-interactive mode

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <uvfits_file>"
  exit 1
fi

UVFITS=$1
SCRIPT="auto_image.difmap"

difmap <<EOF
obs file $UVFITS
source $UVFITS
@ $SCRIPT
EOF
