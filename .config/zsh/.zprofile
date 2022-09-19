
###############################################
##               XDG Paths                   ##
###############################################
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# eval $(gnome-keyring-daemon --start)
export GNOME_KEYRING_SOCKET
export GNOME_KEYRING_PID
export SSH_AUTH_SOCK="$GNOME_KEYRING_CONTROL/ssh"

source "$HOME/.zshrc"

if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep bspwm || startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
