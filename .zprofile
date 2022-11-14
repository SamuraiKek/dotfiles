# ---------------------------------------------------------------------------------------------------------------------
# Z PROFILE
#
# Runs on login. This is where environment variables that normally would not be changed during the lifetime of the user
# session are declared.
# ---------------------------------------------------------------------------------------------------------------------

# XDG User Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_SCREENSHOTS_DIR="$HOME/media/grimshot"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship/"

#export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME="qt5ct" 
export GTK_THEME=Adapta-Nokto-Eta

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  export MOZ_ENABLE_WAYLAND=1
  exec sway
fi
