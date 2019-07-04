xrandr --setprovideroutputsource NVIDIA-0
xrandr --auto
autorandr
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys &
unclutter &
setxkbmap -option caps:escape,compose:ralt gb
case $WM in
    i3)
        exec i3
        ;;
    dwm)
        exec dwm
        ;;
    *)
        exec i3
        ;;
esac
