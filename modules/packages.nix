{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = [
    pkgs.neovim 
    pkgs.micro
    pkgs.wget
    pkgs.git
    pkgs.kitty
    pkgs.xarchiver
    pkgs.p7zip
    pkgs.networkmanagerapplet
    pkgs.brightnessctl
    pkgs.gsettings-desktop-schemas
    pkgs.glib   # <-- se mai mi servisse gsettings
  ];

  programs.fish.enable = true; # Lascialo per forza
  programs.thunar.enable = true;
  programs.steam.enable = true;
}
