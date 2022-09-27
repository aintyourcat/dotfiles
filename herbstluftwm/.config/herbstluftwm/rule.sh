herbstclient unrule -F

herbstclient rule focus=on
herbstclient rule floatplacement=center
herbstclient rule windowtype~'_NET_WM_WINDOW_TYPE_(DIALOG|UTILITY|SPLASH)' floating=on
herbstclient rule windowtype='_NET_WM_WINDOW_TYPE_DIALOG' focus=on
herbstclient rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP)' manage=off
herbstclient rule fixedsize floating=on
herbstclient rule title='Picture in picture' floating=on
herbstclient rule class~'[Vv]irt-manager' tag=$(herbstclient attr tags.4.name)
herbstclient rule title~'DevTools.*' floating=on
