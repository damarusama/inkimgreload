#!/bin/bash
inkscape -C -d 90 -f "$1"  -e "$1.png";
feh -F -R 0.3 --zoom 90 "$1.png" &
while inotifywait -e close_write $1; do inkscape -C -d 90 -f "$1"  -e "$1.png" ; done
