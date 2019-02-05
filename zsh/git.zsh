# git aliases
alias gs='git status'

alias gco='g checkout'
alias gpush='g push origin $(current_branch)'

alias gprune='git branch --merged | egrep -v "(^\*|master|dev|develop|development)" | xargs git branch -d'

function g() {
    if [[ $# > 0 ]]; then
        # if there are arguments, send them to git
        git $@
    else
        # otherwise, run git status
        git s
    fi
}

# https://github.com/robbyrussell/oh-my-zsh
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
