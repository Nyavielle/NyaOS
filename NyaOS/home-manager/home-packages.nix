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
    
    # Desktop programs
    firefox
    bitwarden-desktop
    telegram-desktop
    vesktop
    steam
    spotify
    zathura
    zoom-us
    vscode

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
