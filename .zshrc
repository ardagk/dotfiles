export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mikeh"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='nvim'
 fi

plugins=(
  git
)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export FZF_DEFAULT_OPTS="--cycle  --multi --bind 'tab:toggle-up,btab:toggle-down'"

alias la='lazygit'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias vim='vim -u ~/dotfiles/.vimrc'
alias tmux='tmux -f ~/dotfiles/.tmux.conf'
alias l='ls'
alias tsync='sudo sntp -sS pool.ntp.org'
alias dlogin='echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin'

export PYTHONDONTWRITEBYTECODE=1

if [[ `uname` =~ "Darwin" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
    export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1
fi

source ~/dotfiles/.inputrc
