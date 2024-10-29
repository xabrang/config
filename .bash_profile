export EDITOR="nvim"
export BROWSER="firefox"
export PAGER="less"

export GOPATH="$HOME/.local/share/godir"
export GO_PATH="$HOME/.local/share/go/bin"

export ZIG_PATH="$HOME/.local/share/zig"

export FNM_PATH="$HOME/.local/share/fnm"

if [[ ! "$PATH" == */home/xabrang/.local/share/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/xabrang/.local/share/fzf/bin"
fi

export PATH="$PATH:$HOME/.local/bin:$GO_PATH:$FNM_PATH:$ZIG_PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
