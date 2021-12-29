#!/bin/sh

. $(command -v colors)

sed \
    -e "s/FOREGROUND/$FOREGROUND/g" \
    -e "s/BACKGROUND/$BACKGROUND/g" \
    -e "s/BLACK/$BLACK/g" \
    -e "s/DARK_GREY/$DARK_GREY/g" \
    -e "s/DARK_RED/$DARK_RED/g" \
    -e "s/RED/$RED/g" \
    -e "s/DARK_GREEN/$DARK_GREEN/g" \
    -e "s/GREEN/$GREEN/g" \
    -e "s/DARK_YELLOW/$DARK_YELLOW/g" \
    -e "s/YELLOW/$YELLOW/g" \
    -e "s/DARK_BLUE/$DARK_BLUE/g" \
    -e "s/BLUE/$BLUE/g" \
    -e "s/DARK_MAGENTA/$DARK_MAGENTA/g" \
    -e "s/MAGENTA/$MAGENTA/g" \
    -e "s/DARK_CYAN/$DARK_CYAN/g" \
    -e "s/CYAN/$CYAN/g" \
    -e "s/GREY/$GREY/g" \
    -e "s/WHITE/$WHITE/g" \
    ./square-template.rasi > ./square.rasi
