{ hostname, ... }:
{
  networking.hostName = hostname;

  networking.wireless.iwd.enable = true;

  services.resolved = {
    enable = true;
    extraConfig = ''
      DNS=1.1.1.1 1.0.0.1
      FallbackDNS=9.9.9.9
      Domains=~.
      LLMNR=yes
      MulticastDNS=yes
      DNSSEC=yes
      DNSOverTLS=yes
      Cache=yes
      DNSStubListener=yes
    '';
  };

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 ];
    allowedUDPPorts = [];
    allowPing = false;
    rejectPackets = true;
    checkReversePath = "loose";
    logRefusedConnections = true;
  };
}
