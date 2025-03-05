{ pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Machine's hostname.
  networking.hostName = "nixos";
  
  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
    LC_CTYPE = "en_US.utf8"; 
  };

  services.xserver = {
    enable = true;

    displayManager.gdm.enable = true;
    displayManager.defaultSession = "none+bspwm";

    # Enable bspwm window manager
    windowManager.bspwm = {
      enable = true;
    };
    
    # Configure keymap in X11
    xkb = {
      layout = "us";
      variant = "";
    };
  };
  
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.braam = {
    isNormalUser = true;
    description = "Ilgar Gamidov";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;

    packages = with pkgs; [
	  ripgrep
	  emacs
	  screenfetch
	  scrot
	  tldr
      direnv
      zsh

      xfce.thunar
      brave

      fzf
      neovim
      wget
      btop
      git
      home-manager
      ghostty
      xclip
      tree
      unzip
      lua53Packages.luarocks
    ];
  };

  programs.firefox.enable = true;

  programs.ssh.askPassword = "";
  programs.zsh.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  programs.nix-ld.enable = true;

  environment.systemPackages = with pkgs; [
    go
    gopls

    rustup
    gcc
    nil
    python3
    nodejs_23
    luarocks
    lua5_3

    dunst
    picom
    rofi  # dmenu
    sxhkd  # i3blocks
    polybar  # i3status
    feh  # i3lock
    lxappearance
  ];

  environment.pathsToLink = [ "/libexec" ];

  fonts.packages = [
    pkgs.nerd-fonts.monofur
    pkgs.nerd-fonts.gohufont
    pkgs.nerd-fonts.fantasque-sans-mono
  ];

  system.stateVersion = "24.05"; # Did you read the comment?
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
