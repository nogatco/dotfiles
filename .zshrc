# If you come from bash you might have to change your $PATH.
export PATH="$PATH:/home/xzvf/.gem/ruby/2.6.0/bin"
export ANDROID_HOME="$HOME/inst/android-sdk"

alias unfuckadb="sudo adb kill-server; sudo adb start-server; adb devices"


#ALIASES
alias yt-dl-song="youtube-dl -f bestaudio 0 -i --add-metadata --metadata-from-title \"'(?P<artist>.+?)\s*-\s*(?P<title>.+?)-.*'\" "
alias yt-dl-cm-s="youtube-dl -x --audio-format best --audio-quality 0 -i --add-metadata --metadata-from-title"
alias fucking="sudo !!"
eval $(thefuck --alias)

#Make make use 8 threads by default
alias make="/usr/bin/make -j 8"
export MAKEFLAGS='-j 8'

alias v=nvim
alias music='systemctl start mpd --user;ncmpcpp'

alias wlan-up="sudo ip link set wlo1 up"
alias wlan-down="sudo ip link set wlo1 down"

alias l="lsd -lah"
alias b="bat"

alias gu="git add -u; git commit -m "
alias gpsh="git push"
alias gpll="git pull"
alias gcln="git clone"
alias gstat="git status"
alias gcom="git commit -m"

#The. Best. Way. To. Commit.
alias gy='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'


export BROWSER="/usr/bin/firefox-developer-edition"

alias t=tmuxinator

alias mntshared="[[ -z $(mount | grep /shared) ]] && sudo mount -t ntfs-3g -o umask=022,gid=998,uid=1000 /dev/sda5 /shared"

mkcd() {
    mkdir -p "$1" && cd "$1"
}

cblatex(){
    rm *.aux *.bbl *.bcf *.blg *.log *.run.xml *.toc
    pdflatex "$1".tex
    biber "$1"
    pdflatex "$1".tex
    pdflatex "$1".tex
}
bvl(){
    pdflatex "$1".tex
    biber "$1"
    pdflatex "$1".tex
    pdflatex "$1".tex
    evince "$1".pdf
}
wttr()
{
    local request="wttr.in/"
    [ "$(tput cols)" -lt 125 ] && request+='?n'
    curl -H "Accept-Language: ${LANG%_*}" --compressed "$request"
}

# FUCK MY SCHOOL'S PRINTER, seriously.
topdfversion(){
    gs -sDEVICE=pdfwrite -dCompatibilityLevel="$3" -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}

ftsp(){
    topdfversion "$1" "$2" 1.5
}

#START SSH-AGENT on startup, so you only need to ssh-add if you want to use your ssh-key
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    #/usr/bin/ssh-add;
}
# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
export EDITOR='nvim'
export VISUAL='nvim'

