# history options
export HISTSIZE=1000000
export HISTFILE=~/.zsh_history

setopt inc_append_history
setopt extended_history

# navigation aliases
alias ll="ls -l"
alias la="ls -al"

eval "$(direnv hook zsh)"

# Git configuration
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\(\1\) /p'
}

setopt PROMPT_SUBST
export PROMPT='%n@%m %F{034}%~%f %F{197}$(parse_git_branch)%f $ '

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
