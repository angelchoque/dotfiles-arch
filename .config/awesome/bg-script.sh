#!/bin/bash

path="/home/angel/wallpapers"

interval=60

while true; do
    for image in "$path"/*; do
        feh --no-fehbg --bg-fill "$image"
        sleep "$interval"
    done
done
