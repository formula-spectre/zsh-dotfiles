bindkey -r "^E"

#deer
bindkey '\ek' deer #bind alt + k to deer
#lfcd
bindkey -s '^o' 'lfcd\n'
#etc-update
bindkey -s '^e' 'doas etc-update\n'
#up search history
bindkey '^[[A' up-line-or-beginning-search
#down search history
bindkey '^[[B' down-line-or-beginning-search
