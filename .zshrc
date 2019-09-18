# .zshrc - configuration file loaded by zsh.


source ~/scripts/exports.sh
source ~/scripts/aliases.sh
source ~/scripts/functions.sh
source ~/scripts/ssh_stuff.sh
source ~/scripts/private_stuff.sh

# Oh my zsh stuff:
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

