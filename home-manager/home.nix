{ pkgs, ... }:

{
  home.username = "braam";
  home.homeDirectory = "/home/braam";
  home.stateVersion = "24.11"; 

  imports = [
    ./modules/window-manager
    ./modules/terminal/ghostty.nix
];

  home.packages = with pkgs; [
    ayu-theme-gtk
    bibata-cursors
    cpufetch
    maxfetch
    nitch
    lazygit
    
    eza
    bat
  ];
  
  programs.git = {
    enable = true;
    userName = "braam76";
    userEmail = "ilgargamidov968@gmail.com";
  };

  programs.home-manager.enable = true;
}
  
