Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.
Very useful scripts are in ~/.local/bin/
Settings for:
vim/nvim (text editor)
zsh (shell)
sxhkd (general key binder)
lf (file manager)
mpd/ncmpcpp (music)
sxiv (image/gif viewer)
mpv (video player)
calcurse (calendar program)
other stuff like xdg default programs, inputrc and more, etc.
I try to minimize what's directly in ~ so:
All configs that can be in ~/.config/ are.
Some environmental variables have been set in ~/.zprofile to move configs into ~/.config/
Bookmarks in text files used by various scripts (like ~/.local/bin/shortcuts)
File bookmarks in ~/.config/files
Directory bookmarks in ~/.config/directories
Usage
These dotfiles are intended to go with numerous suckless programs I use:

dwm (window manager)
dwmblocks (statusbar)
st (terminal emulator)

