#!/bin/bash

path="/home/angel/wallpapers"

interval=20

while true; do
    for image in "$path"/*; do
        width=$(identify -format "%w" "$image")
        height=$(identify -format "%h" "$image")

        if ((width > height)); then
            feh --no-fehbg --bg-fill "$image"
        else
            feh --no-fehbg --bg-max "$image"
        fi
        sleep "$interval"
    done
done
