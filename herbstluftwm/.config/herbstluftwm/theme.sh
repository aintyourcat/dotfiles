herbstclient attr theme.tiling.reset 1
herbstclient attr theme.floating.reset 1
herbstclient set frame_border_active_color '#222222cc'
herbstclient set frame_border_normal_color '#101010cc'
herbstclient set frame_bg_normal_color '#565656aa'
herbstclient set frame_bg_active_color '#345F0Caa'
herbstclient set frame_border_width 1
herbstclient set show_frame_decorations 'focused_if_multiple'
herbstclient set frame_bg_transparent on
herbstclient set frame_transparent_width 5
herbstclient set frame_gap 4

herbstclient attr theme.title_height 15
herbstclient attr theme.title_when always
herbstclient attr theme.title_font 'IosevkaTerm Nerd Font:size=9'  # example using Xft
# herbstclient attr theme.title_font '-*-fixed-medium-r-*-*-13-*-*-*-*-*-*-*'
herbstclient attr theme.title_depth 3  # space below the title's baseline
herbstclient attr theme.active.color '#345F0Cef'
herbstclient attr theme.title_color '#ffffff'
herbstclient attr theme.normal.color '#323232dd'
herbstclient attr theme.urgent.color '#7811A1dd'
herbstclient attr theme.tab_color '#1F1F1Fdd'
herbstclient attr theme.active.tab_color '#2B4F0Add'
herbstclient attr theme.active.tab_outer_color '#6C8257dd'
herbstclient attr theme.active.tab_title_color '#ababab'
herbstclient attr theme.normal.title_color '#898989'
herbstclient attr theme.inner_width 1
herbstclient attr theme.inner_color black
herbstclient attr theme.border_width 3
herbstclient attr theme.floating.border_width 4
herbstclient attr theme.floating.outer_width 1
herbstclient attr theme.floating.outer_color black
herbstclient attr theme.active.inner_color '#789161'
herbstclient attr theme.urgent.inner_color '#9A65B0'
herbstclient attr theme.normal.inner_color '#606060'
# copy inner color to outer_color
for state in active urgent normal ; do
    herbstclient substitute C theme.${state}.inner_color \
        attr theme.${state}.outer_color C
done
herbstclient attr theme.tiling.outer_width 1
herbstclient attr theme.background_color '#141414'

herbstclient set window_gap 0
herbstclient set frame_padding 0
herbstclient set smart_window_surroundings off
herbstclient set smart_frame_surroundings on
herbstclient set mouse_recenter_gap 0
