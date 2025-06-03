{ pkgs, ... }:
{
  boot.loader.grub = {
    enable = true;
    
    efiSupport = true;
    zfsSupport = true;
  };
}
