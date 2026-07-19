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
    slurp # For screenshot (selettore)
    satty # For screenshot (modificatore)
    wf-recorder # For recording
    seahorse # For keyring
    avizo # multimedia keys (OSD)

    firefox
    spotify
    onlyoffice-desktopeditors
    mousepad # text-editor
    mpv # media player
    ristretto # image viewer
    atril # pdf viewer
    gnome-disk-utility
    ferdium
    prismlauncher # minecraft java
    heroic
  ];

  programs.vscode.enable = true;
}
