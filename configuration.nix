{ stateVersion, timezone, ... }:
{
  imports = [
    ./modules
  ];
  
  system.stateVersion = stateVersion;
  time.timeZone = timezone;
}
