#!/usr/bin/env sh

file_viewer()
{
	# Must have xclip installed to even show menu.
	xclip -h >/dev/null || exit

	# open the specifiy file
	chosen=$(find $1 -type f | rofi -dmenu -i -l 20 -width 50 -fn Monospace-18)
	[ "$chosen" != "" ] || exit
	# set global variabl TERMINAL and EDITOR in bashrc or profile file
	setsid -f "$TERMINAL" -e "$EDITOR" "$chosen"  >/dev/null 2>&1
}
