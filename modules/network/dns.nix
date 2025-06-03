{
  services.resolved = {
    enable = true;
    extraConfig = ''
      DNS=1.1.1.1 1.0.0.1
      FallbackDNS=9.9.9.9
      Domains=~.
      DNSSEC=yes
      DNSOverTLS=yes
      Cache=yes
    '';
  };
}
