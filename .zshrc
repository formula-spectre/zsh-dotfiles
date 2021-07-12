bindkey -r '^R'
autoload -U compinit && compinit -u  #autoload compinit
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search #load the up and down wiget to navigate  history
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -N edit-command-line
#sourcing stuff
source ~/.zsh/lfcd.sh  #source lfcd
source ~/.zsh/aliases.sh #source aliases
source /usr/share/skim/completion.zsh #source skim's completions
source ~/.zsh/keybinds.zsh #source personal keybindings
source ~/.zsh/deer #source deer
source ~/.zsh/functions #source deer
source ~/.zsh/history.zsh #source omz's history zsh plugin
zle -N deer #load deer
source ~/.zsh/antigen-hs/init.zsh #had to put it here because apparently some keybinding (eg skim) won't work
source /usr/share/skim/key-bindings.zsh #source skim's key-bindings
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh

#have to put this here instead of .zshenv because else it won't work
export AUTO_NOTIFY_IGNORE=("junest" "iwctl" "zathura" "su" "lfcd" "n" "tg" "man" "less" "vim" "emacs" "bat" "doas vim" "htop"  "watch" "arch-chroot")
#
#adding colors to tab completions
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#config for fzf-tab
zstyle ':fzf-tab:*' fzf-command sk 
#jumping stuff (autojump, z)
eval "$(fasd --init auto)"
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

eval "$(starship init zsh)" #starship prompt

#ls on cd
function cd() {
   emulate -LR zsh
   builtin cd $@ &&
   exa -a --group-directories-first
}
#
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  #exec sx
#fi
