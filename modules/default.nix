{ ... }:

{
  imports = [
    ./boot.nix
    ./networking.nix
    ./fonts.nix
    ./locale.nix
    ./packages.nix
    ./users.nix
    ./optimisation.nix
  
    ./hardware
    ./desktop
    ./programs
  ];
}
