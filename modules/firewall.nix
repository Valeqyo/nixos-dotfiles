{ ... }:

{
  networking.firewall = rec {
    enable = true;
    allowedTCPPortRanges = [ { from = 1714; to = 1764; } ]; # kde-connect
    allowedUDPPortRanges = allowedTCPPortRanges; # kde-connect
  };
}
