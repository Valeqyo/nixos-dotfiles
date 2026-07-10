{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    starship
  ];
}
