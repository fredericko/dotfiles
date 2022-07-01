[ -f "$HOME/.config/env" ] && source "$HOME/.config/env"

# Lines configured by zsh-newuser-install
setopt promptsubst
stty stop undef # Disable ctrl+s to freeze terminal
zle_highlight=('paste:none')
HISTSIZE=100000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source $XDG_CONFIG_HOME/zsh/scripts/agnoster.zsh-theme
source $XDG_CONFIG_HOME/zsh/scripts/zsh-syntax-highlighting.zsh
source /opt/asdf-vm/asdf.sh 
