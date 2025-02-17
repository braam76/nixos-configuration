{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  home.username = "braam";
  home.homeDirectory = "/home/braam";
  home.stateVersion = "24.11"; 

  programs.git = {
    enable = true;
    userName = "braam76";
    userEmail = "ilgargamidov968@gmail.com";
  };

  programs.nixvim = {
    enable = true;
  };

  programs.home-manager.enable = true;
}
  
