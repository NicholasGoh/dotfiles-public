command_exists() { command -v "$1" >/dev/null 2>&1; }

command_exists duf && alias df="duf -only local"
command_exists ncdu && alias duu="ncdu --color dark -rr -e"
command_exists choose && alias awk='choose $@'
command_exists bat && alias cat='bat $@' && alias aa='bat ~/.bash_aliases'
command_exists rg && alias grep='rg $@'
command_exists fd && alias find='fd $@'

alias lll='exa -laT -L2 -I .git'
alias c='clear'
alias mkdir='mkdir -pv'
alias cp="cp -r"

alias rr="ranger"

alias ba='nvim ~/.bash_aliases'
alias tt="nvim ~/.tmux.conf"
alias zz="nvim ~/.zshrc"
alias zh="nvim ~/.zsh_history"
alias sc="nvim ~/.ssh/config"
alias v="nvim -p"
alias vi="nvim -p"
