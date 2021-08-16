#!/bin/sh

sound_path="$XDG_DATA_HOME/sounds/linux-a11y/stereo/complete.oga"

mpv --no-terminal --volume=50 "$sound_path"
