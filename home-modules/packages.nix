{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    kanshi
    starship
  ];
}
