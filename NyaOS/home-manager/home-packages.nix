{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs;
  [
    # Desktop environment
    hyprland
    hyprpaper
    hypridle
    hyprlock
    waybar
    wofi
    playerctl
    brightnessctl
    wl-clipboard
    grim
    slurp
    
    # Desktop programs
    firefox
    bitwarden-desktop
    telegram-desktop
    vesktop
    steam
    spotify
    zathura
    zoom-us

    # Terminal
    kitty
    neovim
    ranger
    tree
    curl
    wget
    zip
    unzip

    # Compilers
    python3Full
    clang
    cargo
    nodejs

    # DevOps tools
    git
    docker
  ];
}
