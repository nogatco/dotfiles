xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys &
unclutter &
setxkbmap -option caps:escape,compose:ralt gb
#intel-virtual-output
autorandr -c
exec i3


