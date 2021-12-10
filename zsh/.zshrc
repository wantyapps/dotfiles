export EDITOR="nvim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
source $HOME/.cargo/env
export GOPATH="/Users/uriarev/go"
export GITHUB_TOKEN="$(cat ~/.config/release_it_github_token.txt)"
export MANPAGER="col -b | nvim -c 'set ft=man nomod nolist ignorecase' -"
alias t="tmux"
alias mutt="neomutt"
alias tt="nvim ~/.tmux.conf"
alias ttt="tmux attach -t"
alias e="exit"
alias qrcode="echo \"Never gonna give you up, never gonna let you down.\" | curl -d @/dev/stdin qrcode.show"
alias jest="jest --verbose"
alias ls="ls -G"
alias snek="nsnake"
alias vv="nvim"
alias vim="nvim"
alias V="vifm"
alias so="source ~/.config/zsh/.zshrc"
alias zsr="nvim ~/.config/zsh/.zshrc"
alias iv="nvim ~/.config/nvim/init.lua"
alias g="git"
alias gc="git commit"
alias gp="git push"
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gss="git status -s"
alias rr="curl -L http://bit.ly/10hA8iC | bash"
alias ips="arp -a | awk '{print \$2 \" \" \$4}' | tr -d '()'"

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

bindkey -v
export KEYTIMEOUT=1

bindkey -s '^n' 'cd ~/Documents/LaTeX\n'
bindkey -s '^t' 'cd ~/.config/\n'
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

eval $(thefuck --alias)

export PATH="/Users/uriarev/.local/bin:/opt/metasploit-framework/bin:$PATH"

if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"

	# Optional

	# Bind C-o to the last theme.
	last_theme() {
		theme.sh "$(theme.sh -l|tail -n2|head -n1)"
	}

	zle -N last_theme
	bindkey '^O' last_theme

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PROMPT="%n %F{red}::%f %F{10}%~%f %F{blue}»%f "
