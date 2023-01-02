# .bashrc
if [ "$DISPLAY" ]; then
    activ_win_id=`xprop -root _NET_ACTIVE_WINDOW`
    activ_win_id=$(echo $activ_win_id | awk '{ activ_win_id=substr($0,41,9); print activ_win_id; }' )
    xprop -id $activ_win_id -remove WM_NORMAL_HINTS
fi
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:/usr/local/go/bin" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:/usr/local/go/bin:$PATH"
fi
export PATH

export PS1="\u@\h:\[\e[1m\]\w\[\e[0m\]\$ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias tt="tt -showwpm -notheme -nohighlight"
