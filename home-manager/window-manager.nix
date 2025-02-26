{ ... }:

{
  # BSPWM configuration
  home.file.".config/bspwm/bspwmrc".source = ./window-manager/bspwm/bspwmrc;

  # sxhkd configuration
  home.file.".config/sxhkd/sxhkdrc".source = ./window-manager/sxhkd/sxhkdrc;

  # Polybar configuration
  home.file.".config/polybar/config.ini".source = ./window-manager/polybar/config.ini;

  # Dunst configuration
  home.file.".config/dunst/dunstrc".source = ./window-manager/dunst/dunstrc;

  # Rofi configuration
  home.file.".config/rofi/config.rasi".source = ./window-manager/rofi/config.rasi;
}
