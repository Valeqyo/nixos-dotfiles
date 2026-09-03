{ ... }:

{
  networking.firewall = rec {
    enable = true;
    #allowedUDPPorts = [ 427 ];  # SLP, usato da hp-setup per la discovery di rete
    allowedTCPPortRanges = [ { from = 1714; to = 1764; } ]; # kde-connect
    allowedUDPPortRanges = allowedTCPPortRanges; # kde-connect
  };
}
