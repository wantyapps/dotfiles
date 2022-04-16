if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR="nvim"
export GPG_TTY=$(tty)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# source $HOME/.cargo/env
export GOPATH="/Users/uriarev/go"
export GITHUB_TOKEN="$(cat ~/.config/release_it_github_token.txt)"
export MARKETSTACK_API_KEY="$(cat ~/.config/marketstack_token.txt)"
export MANPAGER="col -b | nvim -c 'set ft=man nomod nolist ignorecase' -"
alias t="tmux"
# alias npm="pnpm"
# alias npx="pnpx"
alias fishies="asciiquarium"
alias mutt="neomutt"
alias pipes="pipes.sh -Rr 0"
alias tt="nvim ~/.tmux.conf"
alias ttt="tmux attach -t"
alias mpc="mpc --password=$(security find-generic-password -s mpd-wantyapps -a wantyapps -w)"
alias tree="tree -C"
alias e="exit"
alias snekisneksnek="nsnake"
# alias qrcode="echo \"Never gonna give you up, never gonna let you down.\" | curl -d @/dev/stdin qrcode.show"
alias jest="jest --verbose"
alias lg="lazygit"
# alias python="python3"
alias ls="ls -G"
alias make="gmake"
alias snek="nsnake"
alias vv="nvim"
alias vim="nvim"
alias V="vifm"
alias so="source ~/.config/fish/config.fish"
alias zsr="nvim ~/.config/zsh/.zshrc"
alias fsr="nvim ~/.config/fish/config.fish"
alias iv="nvim ~/.config/nvim/init.lua"
alias g="git"
alias gc="git commit -s"
alias gp="git push"
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gss="git status -s"
alias rr="curl -L http://bit.ly/10hA8iC | bash"
alias ips="arp -a | awk '{print \$2 \" \" \$4}' | tr -d '()'"

thefuck --alias | source
starship init fish | source
fish_vi_key_bindings

if type -q theme.sh
	if test -e ~/.theme_history
	theme.sh (theme.sh -l|tail -n1)
	end

	# Optional
	# Bind C-o to the last theme.
	function last_theme
		theme.sh (theme.sh -l|tail -n2|head -n1)
	end

	bind \co last_theme

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
end
