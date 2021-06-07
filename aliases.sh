alias depclean="doas id && doas pacman -Qdtq | doas pacman -Rs -"
alias fzf="sk"
alias randomwp="feh --bg-fill --randomize ~/Pictures/Walls"
alias modifydwm="vim ~/.config/dwm/config.h"
alias recompiledwm="cd ~/.config/dwm/ && doas make clean install && cd"
alias l="colorls"
alias r="rm -rvf"
alias vim="nvim"
alias emacs="emacs -nw"
alias jobs="jobs -p"
alias icat="kitty +kitten icat"
alias sxiv="devour sxiv"
alias zathura="devour zathura"
alias ls="exa"
if [  -f  colorls ]; then alias ls=colorls; fi
alias zpool="doas zpool"
alias zfs="doas zfs"
alias unarc='arc unarchive'
alias md='mkdir'