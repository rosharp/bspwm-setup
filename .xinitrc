#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# autolock
xautolock -time 5 -locker betterlockscreen -l

exec bspwm
xrdb ~/.Xresources
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export LC_CTYPE=en_US.UTF-8
export XCURSOR_THEME="Bibata-Modern-Ice"
