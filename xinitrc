#!/bin/sh
#
# author   : Yang Chong <iamyangchong@gmail.com>
# modified : 2013 Oct 29
#

#-- font --#
xset +fp /usr/share/fonts/ohsnap
xset fp rehash

#-- powersave --#
xset +dpms
xset dpms 0 0 300

#-- ime --#
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
fcitx &

#-- app --#
#xmodmap ~/.xmodmaprc &      # swap Caps_Lock and Control_L
#compton -cGb                # add fancy shadows
#unclutter -idle 5 &         # hide mouse cursor
#syndaemon -t -k -i 2 -d &   # disable trackpad while typing
#urxvtd -q -f -o             # urxvt daemon
#eval $(cat ~/.fehbg)        # set wallpaper
#btsync --config ~/.btsyncrc # start btsync
#urxvtc -e sh -c "tmuxen" &  # start tmux
nitrogen --restore
xsetroot -cursor_name left_ptr &
terminator -x tmux -2 &

#-- wm --#
exec mobar
