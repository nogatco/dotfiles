# .zshrc - configuration file loaded by zsh.


source ~/scripts/shell/exports.sh
source ~/scripts/shell/aliases.sh
source ~/scripts/shell/functions.sh
source ~/scripts/shell/ssh_stuff.sh
source ~/scripts/shell/private_stuff.sh

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

