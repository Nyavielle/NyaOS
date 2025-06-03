{ pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    hyprland
    hyprpaper
    hyprlock
    hypridle

    waybar
    wofi

    playerctl
    brightnessctl

    kitty
    zsh
  ];
}
