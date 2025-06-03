{ stateVersion, timezone, ... }:
{
  imports = [
    ./modules
    ./hardware-configuration.nix
  ];
  
  system.stateVersion = stateVersion;
  time.timeZone = timezone;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
