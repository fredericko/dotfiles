[ -f "$HOME/.config/env" ] && source "$HOME/.config/env"
[ -f "$HOME/.config/alias" ] && source "$HOME/.config/alias"

# Lines configured by zsh-newuser-install
setopt promptsubst
setopt interactive_comments
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
autoload -Uz colors && colors
compinit
# End of lines added by compinstall

source "$ZDOTDIR/zsh-functions"

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


zsh_add_file "zsh-prompt"

# zsh_add_plugin "agnoster.zsh-theme"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

[[ -f "/opt/asdf-vm/asdf.sh" ]] && source /opt/asdf-vm/asdf.sh 
