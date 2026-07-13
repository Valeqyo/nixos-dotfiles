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
    ./pam.nix
  
    ./hardware
    ./desktop
    ./programs
  ];
}
