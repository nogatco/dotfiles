#/bin/sh
i3-msg 'workspace 0'
#Wait for compton animation to finish
sleep 1
i3lock-fancy  -t "Password" -f "Hack Nerd Font Mono 30" -- scrot -z
i3-msg 'workspace back_and_forth'
