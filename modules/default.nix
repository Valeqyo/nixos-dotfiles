{ ... }:

{
  imports = [
    ./boot.nix
    ./fonts.nix
    ./locale.nix
    ./packages.nix
    ./users.nix
    ./optimisation.nix
    ./pam.nix
    ./zram.nix
    ./printing.nix
    ./firewall.nix
  
    ./hardware
    ./desktop
    ./programs
  ];
}
