{ pkgs, ... }:
{
  # boot.loader.grub = {
  #   enable = true;
  #
  #   efiSupport = true;
  #   zfsSupport = true;
  # };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
