{ config, pkgs, ... }:

{
  imports = [
    ./home-modules
  ];

  home.username = "comar";
  home.homeDirectory = "/home/comar";
  home.stateVersion = "26.05";
}
