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
    dracula-theme
    rose-pine-gtk-theme
    rose-pine-hyprcursor
    rose-pine-cursor
    rose-pine-icon-theme
    cliphist
    wl-clipboard
    wl-clip-persist
    hypridle
    hyprlock
    waybar
    starship
    grim # For screenshot
    slurp # For screenshot
    satty # For screenshot
    firefox
    spotify
  ];

  programs.bash.enable = true;
  programs.vscode.enable = true;
  programs.git.enable = true;
}
