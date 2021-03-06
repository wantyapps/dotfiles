# yeetspoon YEEEEETSPOOOOOON
unsetopt PROMPT_SP
GOPATH=/Users/uriarev/go/
export EDITOR=nvim
alias vis="/usr/local/bin/vis"
alias ls="exa -l"
alias gd="git diff"
alias la="ls -a"
alias gc="git commit"
alias gr="git remote"
alias g="git"
alias gp="git push"
alias gss="git status -s"
alias gs="git status"
alias v="nvim ."
alias vv="nvim"
alias ga="git add"
alias t="tmux"
alias iv="nvim ~/.config/nvim/init.lua"
alias tt="nvim ~/.tmux.conf"
alias zsr="nvim ~/.zshrc"
alias f='fzf --preview "bat {}"'
alias ttt="tmux attach -t"
alias e="exit"
alias V="vifm"
alias c="clear"
alias so="source ~/.zshrc"
alias todo="todo.sh"
setopt prompt_subst
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval $(/usr/local/bin/thefuck --alias)
export LC_ALL=en_US.UTF-8
# source /usr/local/opt/gitstatus/gitstatus.prompt.zsh
# PROMPT=$'%F{31}%n%F{15}@%F{64}%m:%F{184}%~%F{15}<$GITSTATUS_PROMPT>|<$?>$ %F{15}'
set -o vi
# eval "$(starship init zsh)"
zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist
zstyle ':completion:*' menu select
bindkey '^[[Z' reverse-menu-complete

export PATH=$PATH:/Library/TeX/texbin/
