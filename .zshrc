#export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$PATH:/home/be/inst/flutter/bin: /home/be/inst/android-sdk/platform-tools"
export ANDROID_HOME="$HOME/inst/android-sdk"

alias unfuckadb="sudo adb kill-server; sudo adb start-server; adb devices"

#ALIASES
alias yt-dl-song="youtube-dl -f bestaudio 0 -i --add-metadata --metadata-from-title \"'(?P<artist>.+?)\s*-\s*(?P<title>.+?)-.*'\" "
alias yt-dl-cm-s="youtube-dl -x --audio-format best --audio-quality 0 -i --add-metadata --metadata-from-title"
alias fucking="sudo !!"
#eval $(thefuck --alias)

alias adb=/home/be/inst/android-sdk/platform-tools/adb

alias v=nvim
alias music='systemctl start mpd --user;ncmpcpp'

alias wlan-up="sudo ip link set wlo1 up"
alias wlan-down="sudo ip link set wlo1 down"

alias l='ls -lah'

alias gu="git add -u; git commit -m "
#The. Best. Way. To. Commit.
alias gy='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'
# FOR Tmux
export TERM="st-256color"

export BROWSER="/usr/bin/firefox"

alias tss="tmux new-session -A -s sys"
alias tsp="tmux new-session -A -s personal"
alias tsd="tmux new-session -A -s dev"

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
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# make xterm transparent&add 256color flag
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

#bindkey -v

export EDITOR='vim'
export VISUAL='vim'
