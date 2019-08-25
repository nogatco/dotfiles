[[ -z $(mount | grep /shared) ]] && sudo mount -t ntfs-3g -o umask=022,gid=998,uid=1000 /dev/sda5 /shared

if [ -z "$(ssh-add -l | grep xzvf)" ]
then
    ssh-add
    mbsync -a
fi


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

