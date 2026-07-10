{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    starship
    awww
    rofi
    btop
    pavucontrol
    playerctl
    zscroll
  ];

  programs.bash.enable = true;
  programs.waybar.enable = true;
  programs.starship.enable = true;
  programs.firefox.enable = true;
  programs.vscode.enable = true;
  programs.git.enable = true;
}
