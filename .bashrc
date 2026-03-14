#
# ~/.bashrc
#
export PATH="$PATH:/home/kopihue/.local/bin"

set -o vi

bind 'set show-mode-in-prompt on'
bind 'set vi-ins-mode-string [\1\033[1;32m\2+\1\033[0m\2]'
bind 'set vi-cmd-mode-string [\1\033[1;31m\2!\1\033[0m\2]'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
alias grep='grep --color=auto'
alias n='nvim .'
alias zed='zeditor . && exit'
alias trans='/home/kopihue/Projects/trans/.venv/bin/python -m trans.main'

PS1=' '

# customs alias
alias diamond='/home/kopihue/Rust/rust_book/chapter_three/projects/string_recursive/target/release/string_recursive'

# functions
function svenv() {
    source .venv/bin/activate
}
