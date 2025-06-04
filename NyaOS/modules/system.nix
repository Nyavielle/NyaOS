{ stateVersion, timezone, ... }:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;
  
  system.stateVersion = stateVersion;

  time.timeZone = timezone;

  environment.sessionVariables = rec {
    TERMINAL = "kitty";
    EDITOR = "nvim";
  };

  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
    priority = 999;
  };
}
