{ pkgs, inputs, ... }:

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
    grim 				  # For screenshot
    slurp 				# For screenshot (selettore)
    satty 				# For screenshot (modificatore)
    wf-recorder 	# For recording
    # seahorse			# For keyring
    avizo 				# Multimedia keys (OSD)
    engrampa 			# Alternativa a xarchive
    inputs.snappy-switcher.packages.${pkgs.stdenv.hostPlatform.system}.default # WIN + TAB 
    socat         # For fullscreen waybar workspace

    firefox
    spotify
    onlyoffice-desktopeditors
    mousepad 			# text-editor
    mpv 				# media player
    ristretto 			# image viewer
    atril 				# pdf viewer
    gnome-disk-utility
    ferdium
    prismlauncher 		# minecraft java
    mcpelauncher-ui-qt  # minecraft bedrock
    heroic
    tldr
    openrgb-with-all-plugins
    gcc         		  # il compilatore C
    gdb         		  # debugger, per capire cosa fa il programma in memoria
    # gnumake     		# per usare i Makefile (utile su progetti più grandi)
    # valgrind    		# trova bug di memoria, molto usato anche in security
    # binutils    		# objdump e altri tool per guardare l'assembly
  ];

  programs.vscode.enable = true;
}
