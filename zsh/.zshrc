# Wow. My ZSH Config.

export EDITOR="vim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GOPATH="/Users/uriarev/go"
alias t="tmux"
alias tt="vim ~/.tmux.conf"
alias ttt="tmux attach -t"
alias e="exit"
alias jest="jest --verbose"
alias ls="exa -l"
alias vv="vim"
alias V="vifm"
alias so="source ~/.config/zsh/.zshrc"
alias zsr="vim ~/.config/zsh/.zshrc"
alias iv="vim ~/.vimrc"
alias g="git"
alias gc="git commit"
alias gp="git push"
alias ga="git add"
alias gs="git status"
alias gss="git status -s"
alias cat="bat"

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
setopt +o menucomplete
bindkey -M menuselect '^[[Z' reverse-menu-complete

#function zle-keymap-select () {
#    case $KEYMAP in
#        vicmd) echo -ne '\e[1 q';;
#        viins|main) echo -ne '\e[5 q';;
#    esac
#}
#zle -N zle-keymap-select
#zle-line-init() {
#    zle -K viins
#    echo -ne "\e[5 q"
#}
#zle -N zle-line-init
#echo -ne '\e[5 q'
#preexec() { echo -ne '\e[5 q' ;}

bindkey -v
export KEYTIMEOUT=1

bindkey -s '^o' 'cd ~\n'
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

eval "$(starship init zsh)"
eval $(thefuck --alias)

export PATH="/Users/uriarev/.local/bin:$PATH"
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
