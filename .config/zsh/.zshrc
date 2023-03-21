[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

plug "$HOME/.config/exports"
plug "$HOME/.config/aliases"

stty stop undef # Disable ctrl+s to freeze terminal
zle_highlight=('paste:none')
HISTSIZE=100000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

autoload -Uz compinit 
autoload -Uz colors && colors
compinit
# End of lines added by compinstall

#plugins
plug "zap-zsh/atmachine-prompt"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"
# plug "/opt/asdf-vm/asdf.sh"
