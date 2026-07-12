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
    swaynotificationcenter
    libnotify
    nwg-look
    rose-pine-gtk-theme
    rose-pine-hyprcursor
    rose-pine-cursor
    rose-pine-icon-theme
    cliphist
    wl-clipboard
    wl-clip-persist
    spotify
  ];

  programs.bash.enable = true;
  programs.waybar.enable = true;
  programs.starship.enable = true;
  programs.firefox.enable = true;
  programs.vscode.enable = true;
  programs.git.enable = true;
}
