{ pkgs, ... }:

{
  home.username = "braam";
  home.homeDirectory = "/home/braam";
  home.stateVersion = "24.11"; 

  imports = [
    ./window-manager.nix
  ];

  home.packages = with pkgs; [
    ayu-theme-gtk
    bibata-cursors
    cpufetch
    maxfetch
    nitch
    lazygit
  ];
  
  # terminal config
  programs = {
    ghostty = {
      enable = true;
      settings = {
        theme = "Ayu Mirage";
        font-size = 14;
        font-family = "FantasqueSansM Nerd Font";
        gtk-titlebar = false;
        
        background-opacity = 0.85;
        background-blur-radius = 5;
        };
    };
    
    bash = {
      enable = true;

      bashrcExtra = ''
        eval "$(starship init bash)"
      '';
    };

    starship = {
      enable = true;
    };
  };


  programs.emacs = {
    enable = true;
  };
  
  programs.git = {
    enable = true;
    userName = "braam76";
    userEmail = "ilgargamidov968@gmail.com";
  };

  programs.home-manager.enable = true;
}
  
