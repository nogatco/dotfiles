xrandr --setprovideroutputsource NVIDIA-0
xrandr --auto
xrdb ~/.Xresources
setxkbmap de
xmodmap ~/.Xmodmap
xbindkeys &
xunclutter -grab &
exec i3
