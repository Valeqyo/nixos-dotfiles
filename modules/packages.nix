{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = [
    pkgs.neovim 
    pkgs.micro
    pkgs.wget
    pkgs.git
    pkgs.kitty
    pkgs.file-roller
    pkgs.p7zip
    pkgs.networkmanagerapplet
    pkgs.brightnessctl
    pkgs.gsettings-desktop-schemas
    pkgs.glib   # <-- se mai mi servisse gsettings
  ];

  programs.fish.enable = true;
  programs.thunar.enable = true;
}
