herbstclient keyunbind   --all
herbstclient mouseunbind --all

mod=Mod4

# WM related

herbstclient keybind $mod-Shift-q quit
herbstclient keybind $mod-Shift-r reload

# Tag related

herbstclient keybind $mod-s floating toggle

for tag_index in $(herbstclient foreach TAG tags.by-name. \
    sprintf TAG_INDEX_ATTR %c.index TAG \
    substitute TAG_INDEX_VALUE TAG_INDEX_ATTR \
    echo TAG_INDEX_VALUE); \
do
    [ "$tag_index" -gt 9 ] && break

    if [ "$tag_index" -eq 9 ]; then
        key=0
    else
        key=$((tag_index+1))
    fi

    herbstclient keybind $mod-$key          use_index   "$tag_index"
    herbstclient keybind $mod-Shift-$key    move_index  "$tag_index"
done

herbstclient keybind $mod-period spawn ~/.config/herbstluftwm/scripts/cycle_tag_skip_empty +
herbstclient keybind $mod-comma spawn ~/.config/herbstluftwm/scripts/cycle_tag_skip_empty -

# Frame related

herbstclient keybind $mod-u               split   bottom
herbstclient keybind $mod-Shift-u         split   top
herbstclient keybind $mod-o               split   right
herbstclient keybind $mod-Shift-o         split   left
herbstclient keybind $mod-Control-space   split   explode

herbstclient keybind $mod-Alt-h resize left
herbstclient keybind $mod-Alt-j resize down
herbstclient keybind $mod-Alt-k resize up
herbstclient keybind $mod-Alt-l resize right

herbstclient keybind $mod-r remove

herbstclient keybind $mod-Tab         cycle_frame     1
herbstclient keybind $mod-Shift-Tab   cycle_frame     -1

herbstclient keybind $mod-space       cycle_layout    +1
herbstclient keybind $mod-Shift-space cycle_layout    -1

# Window related

herbstclient keybind $mod-h \
    or , and . \
    compare tags.focus.tiling.focused_frame.algorithm = max \
    . focus --level=tabs left \
    , focus left
herbstclient keybind $mod-j focus down
herbstclient keybind $mod-k focus up
herbstclient keybind $mod-l \
    or , and . \
    compare tags.focus.tiling.focused_frame.algorithm = max \
    . focus --level=tabs right \
    , focus right

herbstclient keybind $mod-Shift-h \
    or , and . \
    compare tags.focus.tiling.focused_frame.algorithm = max \
    . shift --level=tabs left \
    , shift left
herbstclient keybind $mod-Shift-j shift down
herbstclient keybind $mod-Shift-k shift up
herbstclient keybind $mod-Shift-l \
    or , and . \
    compare tags.focus.tiling.focused_frame.algorithm = max \
    . shift --level=tabs right \
    , shift right

herbstclient keybind $mod-f           fullscreen  toggle
herbstclient keybind $mod-Shift-f     set_attr    clients.focus.floating  toggle
herbstclient keybind $mod-Shift-m     set_attr    clients.focus.minimized true

herbstclient keybind $mod-Control-m jumpto last-minimized

herbstclient keybind $mod-Shift-c close

herbstclient mousebind $mod-Button1 move
herbstclient mousebind $mod-Button2 zoom
herbstclient mousebind $mod-Button3 resize

# Program related

herbstclient keybind $mod-Return  spawn   alacritty
herbstclient keybind $mod-p       spawn   rofi -show drun

herbstclient keybind XF86MonBrightnessDown    spawn light -U 5
herbstclient keybind XF86MonBrightnessUp      spawn light -A 5
herbstclient keybind XF86ScreenSaver          spawn xset dpms force off

herbstclient keybind XF86AudioLowerVolume     spawn pactl set-sink-volume @DEFAULT_SINK@ -3%
herbstclient keybind XF86AudioRaiseVolume     spawn pactl set-sink-volume @DEFAULT_SINK@ +3%
herbstclient keybind XF86AudioMute            spawn pactl set-sink-mute @DEFAULT_SINK@ toggle

herbstclient keybind XF86AudioStop spawn mpc stop
herbstclient keybind XF86AudioPlay spawn mpc toggle
herbstclient keybind XF86AudioNext spawn mpc next
herbstclient keybind XF86AudioPrev spawn mpc prev

herbstclient keybind Print          spawn shot
herbstclient keybind Shift-Print    spawn shot -s
herbstclient keybind Control-Print  spawn shot -d
