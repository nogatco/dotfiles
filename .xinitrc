xrandr --setprovideroutputsource NVIDIA-0
xrandr --auto
autorandr
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys &
xunclutter -grab &
setxkbmap -option caps:escape de
exec i3 --shmlog-size=26214400
