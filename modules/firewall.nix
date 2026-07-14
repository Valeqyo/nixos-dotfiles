{ ... }:

{
  networking.firewall = {
    enable = true;
    #allowedUDPPorts = [ 427 ];  # SLP, usato da hp-setup per la discovery di rete
  };
}
