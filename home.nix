{ config, pkgs, ... }:

{
  home.username = "braam";
  home.homeDirectory = "/home/braam";
  home.stateVersion = "24.11"; 

  home.packages = [
    pkgs.eza
    pkgs.fastfetch
    pkgs.ripgrep
    pkgs.nerd-fonts.monofur  
  ];

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  programs.librewolf = {
    enable = true;
    settings = {
      "webgl.disabled" = false;
      "privacy.resistFingerprinting" = false;
      "privacy.clearOnShutdown.history" = false;
      "privacy.clearOnShutdown.cookies" = false;
      "network.cookie.lifetimePolicy" = 0;
    };
  };

  programs.home-manager.enable = true;
}
  
