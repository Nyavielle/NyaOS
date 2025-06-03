{ hostname, ... }:
{
  networking.hostName = hostname;

  networking.wireless.iwd.enable = true;
}
