#!/bin/sh
#
# author   : Yang Chong <iamyangchong@gmail.com>
# modified : 2017 Jun 15
#
# autostart files
# ~/.xinitrc
# /etc/xdg/autostart/*.desktop
# ~/.config/autostart/*.desktop

#-- font --#
xset +fp /usr/share/fonts/local
xset fp rehash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#-- powersave --#
# xset +dpms
# xset dpms 0 0 300
# xset m 20/10 10 r rate 500 30 b on

# sudo /home/chong/bin/fanctl > /dev/null &
# eval "$(cat ~/.fehbg)"
unsplash &
xmodmap ~/.xmodmaprc &      # swap Caps_Lock and Control_L
#xflux -l 31 -g 104 &
#workrave &
#redshift -l 31:104
#compton -cGb                # add fancy shadows
#unclutter -idle 5 &         # hide mouse cursor
#syndaemon -t -k -i 1 -d &   # disable trackpad while typing
#urxvtd -q -f -o             # urxvt daemon
#urxvtc -e sh -c "tmuxen" &  # start tmux
#xrandr --output LVDS1 --off --output HDMI1 --auto
#nitrogen --restore
xsetroot -cursor_name left_ptr &

#-- input method --#
# IBUS
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# ibus-daemon -drx
# export GTK_IM_MODULE_FILE=/etc/gtk-2.0/gtk.immodules
# YONG
export GTK_IM_MODULE=yong
export QT_IM_MODULE=yong
export XMODIFIERS=@im=yong
yong -d &

#-- wm --#
#xrandr --dpi 220 && exec i3
#exec dwm

#-- desktop --#
#exec cinnamon-session
#exec frankenwm2bar
exec startdde
