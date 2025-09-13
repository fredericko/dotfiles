[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "$HOME/.config/shell/exportrc"
plug "$HOME/.config/shell/aliasrc"

setopt autocd  #auto cd into typed folder
stty stop undef # Disable ctrl+s to freeze terminal
zle_highlight=('paste:none')
HISTSIZE=100000
SAVEHIST=100000

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

autoload -Uz compinit 
autoload -Uz colors && colors
compinit

# End of lines added by compinstall

bindkey -e

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

#plugins
plug "zap-zsh/atmachine-prompt"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"
# plug "/opt/asdf-vm/asdf.sh"
