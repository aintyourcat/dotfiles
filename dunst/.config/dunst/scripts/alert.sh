#!/bin/sh

appname="$1"
body="$3"
sound_path="$XDG_DATA_HOME/sounds/linux-a11y/stereo/message.oga"

case $appname in
    "Music Player Daemon")
        case $body in
            Disconnected|Reconnected) ;;
            *) exit ;;
        esac
        ;;
    *) ;;
esac

mpv --no-terminal --volume=50 "$sound_path"
