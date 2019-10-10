# .zlogin is loaded after .zshrc if this is a login shell

# Mount /shared if not already mounted
[ "$(hostname -s)" = "lithium" ] && [[ -z $(mount | grep /shared) ]] && sudo mount -t ntfs-3g -o umask=022,gid=998,uid=1000 /dev/sda5 /shared

# add ssh-key and fetch mail (therefore adding gpg key) if ssh-key is not yet added
if [ -z "$(ssh-add -l | grep xzvf)" ]
then
    ssh-add
    mbsync -a
fi

# Autostart Xorg if this is a graphical session
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

