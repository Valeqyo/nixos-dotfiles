{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = [
    pkgs.neovim 
    pkgs.micro
    pkgs.wget
    pkgs.git
    pkgs.ghostty
    pkgs.file-roller
    pkgs.p7zip
  ];
}
