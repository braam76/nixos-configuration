{ ... }:

{
  home.username = "braam";
  home.homeDirectory = "/home/braam";
  home.stateVersion = "24.11"; 

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
  
