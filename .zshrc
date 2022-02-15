# history options
export HISTSIZE=1000000
export HISTFILE=~/.zsh_history

setopt inc_append_history
setopt extended_history

# navigation aliases
alias ll="ls -l"
alias la="ls -al"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
