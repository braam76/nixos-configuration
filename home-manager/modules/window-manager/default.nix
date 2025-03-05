{ ... }:

{
  # BSPWM configuration
  home.file.".config/bspwm/bspwmrc".source = ./bspwm/bspwmrc;

  # sxhkd configuration
  home.file.".config/sxhkd/sxhkdrc".source = ./sxhkd/sxhkdrc;

  # Polybar configuration
  home.file.".config/polybar/config.ini".source = ./polybar/config.ini;

  # Dunst configuration
  home.file.".config/dunst/dunstrc".source = ./dunst/dunstrc;

  # Rofi configuration
  home.file.".config/rofi/config.rasi".source = ./rofi/config.rasi;
}
