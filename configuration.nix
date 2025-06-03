{ stateVersion, timezone, ... }:
{
  imports = [
    ./modules
  ];
  
  system.stateVersion = stateVersion;
  time.timeZone = timezone;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
