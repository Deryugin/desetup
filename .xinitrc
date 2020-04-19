xbindkeys
setxkbmap -option caps:none

/home/dde/src/dwm-bar/dwm_bar.sh &

case $session in
    i3|i3wm           ) exec i3;;
    kde               ) exec startkde;;
    xfce|xfce4        ) exec startxfce4;;
    awesome           ) exec awesome;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
