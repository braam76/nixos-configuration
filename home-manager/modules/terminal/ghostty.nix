{ ... }:
{
    programs = {  
      ghostty = {
        enable = true;
        settings = {
          theme = "Ayu Mirage";
          font-size = 14;
          font-family = "FantasqueSansM Nerd Font";
          gtk-titlebar = false;
        };
      };
      
      zsh = {
        enable = true;
        enableCompletion = true;  

        shellAliases = {
            ls = "eza --icons always";
        };

        initExtra = ''
          eval "$(starship init zsh)"
        '';
        
        envExtra = ''
          setopt no_global_rcs
        '';
      };

      starship = {
        enable = true;
      };
    };
}
