# Path to your oh-my-zsh installation.
export ZSH=/Users/danh/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_SHOW_CHANGESET=true

plugins=(git xcode zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey '^ ' autosuggest-accept

setopt autocd
alias c="clear"
alias o="open"
alias cat="bat"

eval "$(hub alias -s)"

# GO path when using `go install`
export PATH=$PATH:$HOME/go/bin
eval "$(compass shell)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_FIND_FILE_COMMAND='rg -l'

# Tmux setup
export PATH=$PATH:$HOME/bin 
alias ta="tmux a"

_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

ensure_tmux_is_running

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi


