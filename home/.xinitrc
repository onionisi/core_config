#!/bin/sh
#
# author   : Yang Chong <iamyangchong@gmail.com>
# modified : 2013 Oct 29
#
# autostart files
# ~/.xinitrc
# /etc/xdg/autostart/*.desktop
# ~/.config/autostart/*.desktop
# ~/.config/openbox/autostart

#-- font --#
xset +fp /usr/share/fonts/local
xset fp rehash

#-- powersave --#
# xset +dpms
# xset dpms 0 0 300
# xset m 20/10 10 r rate 500 30 b on

sudo /home/chong/bin/fanctl > /dev/null &
xflux -l 31 -g 104 &
#workrave &
#redshift -l 31:104
#xmodmap ~/.xmodmaprc &      # swap Caps_Lock and Control_L
#compton -cGb                # add fancy shadows
#unclutter -idle 5 &         # hide mouse cursor
#syndaemon -t -k -i 2 -d &   # disable trackpad while typing
#urxvtd -q -f -o             # urxvt daemon
#eval $(cat ~/.fehbg)        # set wallpaper
#urxvtc -e sh -c "tmuxen" &  # start tmux
#xrandr --output LVDS1 --off --output HDMI1 --auto
#nitrogen --restore
xsetroot -cursor_name left_ptr &
#terminator -x tmux -2 &

#-- input method --#
# IBUS
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# ibus-daemon -drx
#export GTK_IM_MODULE_FILE=/etc/gtk-2.0/gtk.immodules
# FCITX
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#-- wm --#
#exec i3
#exec mobar
#exec enlightenment_start
#exec startxfce4
#exec openbox-session
exec cinnamon-session
