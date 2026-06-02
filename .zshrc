#Fuzzy find short script, change to keybind
§() {
  local file
  file=$(fzf) || return
  vim "$file"
}
echo "Battery %:" && cat /sys/class/power_supply/BAT0/capacity
# The following lines were added by compinstall

zstyle ':completion:*' file-sort modification
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' verbose false
zstyle :compinstall filename '/home/frums/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
