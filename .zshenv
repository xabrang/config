export EDITOR="nvim"
export PAGER="less"
export BROWSER="brave"
export GOPATH="$HOME/.local/share/go"
export GO_PATH="/usr/local/go/bin"
export ZIG_PATH="$HOME/.local/share/zig-linux-x86_64-0.13.0"
export FNM_PATH="/home/xabrang/.local/share/fnm"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch $(uname -m)"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="gentoo"
plugins=(gitfast gh cp archlinux fnm fzf)

typeset -U path PATH
path=(~/.local/bin $HOME/.emacs.d/bin $ZIG_PATH $FNM_PATH $GO_PATH $path)
export PATH

alias cl="clear"
