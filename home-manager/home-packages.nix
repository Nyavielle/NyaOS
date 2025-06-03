{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs;
  [
    # Desktop programs
    firefox
    bitwarden-desktop
    telegram-desktop
    vesktop
    steam
    spotify
    zathura

    # Terminal
    kitty
    neovim
    ranger
    tree
    git
    curl
    wget
    zip
    unzip

    # Compilers
    python3Full
    clang
    cargo
    nodejs
  ];
}
