xrandr --setprovideroutputsource NVIDIA-0
xrandr --auto
autorandr
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys &
unclutter &
setxkbmap -option caps:escape,compose:ralt gb

autorandr -c
exec i3

