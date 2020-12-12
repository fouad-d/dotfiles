#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"
export READER="zathura"

#Wallpaper
nitrogen --restore &
#dwmblocks
dwmblocks &
#Keymap
setxkbmap -layout fr,ar -option grp:ctrl_shift_toggle &
#Compositor
picom -f &
#RedShift
redshift-gtk &
# music player daemon-you might prefer it as a service though
mpd &	
# run the remaps script, switching caps/esc and more; check it for more info		
remaps &	
# set the background with the `setbg` script	
#setbg &			# set the background with the `setbg` script
# Uncomment to use Xresources colors/settings on startup
#xrdb ${XDG_CONFIG_HOME:-$HOME/.config}/Xresources &	
# xcompmgr for transparency
#xcompmgr &	
# dunst for notifications	
dunst &		
# Speed xrate up	
xset r rate 300 50 &	
# Remove mouse when idle
unclutter &		
#Loop
while true; do
	dwm >/dev/null 2>&1
done
#Exevute DWM
exec dwm
