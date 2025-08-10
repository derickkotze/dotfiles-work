# history options
export HISTSIZE=1000000
export HISTFILE=~/.zsh_history

setopt inc_append_history
setopt extended_history

# navigation aliases
alias ll="ls -l"
alias la="ls -al"

eval "$(direnv hook zsh)"

# # pyenv configuration
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# # pyenv-virtualenv configuration
# eval "$(pyenv virtualenv-init -)"

# Git configuration
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\(\1\) /p'
}

# # COLOR_DEF=$'%f'
# # COLOR_USR=$'%F{243}'
# # COLOR_DIR=$'%F{034}'
# # COLOR_GIT=$'%F{172}'
setopt PROMPT_SUBST
# # export PROMPT='${COLOR_USR}%n@%m ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '
export PROMPT='%n@%m %F{034}%~%f %F{197}$(parse_git_branch)%f $ '

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
