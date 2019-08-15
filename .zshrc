# Path to your oh-my-zsh installation.
export ZSH=/Users/danh.dang/.oh-my-zsh

#Ruby setup
export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH

ZSH_THEME="powerlevel9k/powerlevel9k"
export TERM="xterm-256color"

#Customize theme
#Install it first: "git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'

plugins=(git xcode)
source $ZSH/oh-my-zsh.sh

setopt autocd
alias c="clear"
alias o="open"
alias cat="bat"

eval "$(hub alias -s)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_FIND_FILE_COMMAND='ag -l'

# Golang setup
export GOPATH=$HOME/Desktop/go
export PATH=$PATH:$GOPATH/bin
eval "$(sextant shell)"

# Load Zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"
bindkey "^ " autosuggest-accept

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
