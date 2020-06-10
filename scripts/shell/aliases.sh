# aliases sourced by .zshrc

# git
alias gu="git add -u; git commit -m "
alias gpsh="git push"
alias gpll="git pull"
alias gcln="git clone"
alias gstat="git status"
alias gcom="git commit -m"
alias gdiff="git diff"
alias ga="git add"

#The. Best. Way. To. Commit.
alias gy='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'

# Youtube dl
alias yt-dl-song="youtube-dl -f bestaudio 0 -i --add-metadata --metadata-from-title \"'(?P<artist>.+?)\s*-\s*(?P<title>.+?)-.*'\" "
alias yt-dl-cm-s="youtube-dl -x --audio-format best --audio-quality 0 -i --add-metadata --metadata-from-title"


# Wifi
alias wlan-up="sudo ip link set wlo1 up"
alias wlan-down="sudo ip link set wlo1 down"

# Make
alias make="/usr/bin/make -j 8"
export MAKEFLAGS='-j 8'


# Random
#alias fucking="sudo !!"
#eval $(thefuck --alias)

# Simple QOL improvements
alias t=tmuxinator
alias v=nvim
alias sv="sudo nvim"
alias se="sudo -e"

alias music='systemctl start mpd --user;ncmpcpp'

alias mntshared="[[ -z $(mount | grep /shared) ]] && sudo mount -t ntfs-3g -o umask=022,gid=998,uid=1000 /dev/sda5 /shared"

# Better standart unix tools
alias l="lsd -lah"
alias b="bat"

# Fix crappy software
alias unfuckadb="sudo adb kill-server; sudo adb start-server; adb devices"

alias startkdewayland="XDG_SESSION_TYPE=wayland dbus-run-session startplasma-wayland"
alias findssh="sudo nmap -sS -p 22"

alias xur="reboot"
