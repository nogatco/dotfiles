# .zlogin is loaded after .zshrc if this is a login shell

# Mount /shared if not already mounted

# add ssh-key and fetch mail (therefore adding gpg key) if ssh-key is not yet added
if [ -z "$(ssh-add -l | grep xzvf)" ]
then
    ssh-add
    # Test network connectivity
    ping -q -c1 1.1.1.1 > /dev/null
    if [ $? -eq 0 ]
    then
        mbsync -a
        notmuch new
    fi
fi

# Autostart Xorg if this is a graphical session
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

