{ ... }:

{
  imports = [
    ./boot.nix
    ./networking.nix
    ./fonts.nix
    ./locale.nix
    ./packages.nix
    ./users.nix
  
    ./hardware
    ./desktop
    #./programs
  ];
}
