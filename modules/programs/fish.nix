{ pkgs, ... }:

{
  programs.fish.enable = true;
  users.users.comar.shell = pkgs.fish;
}
