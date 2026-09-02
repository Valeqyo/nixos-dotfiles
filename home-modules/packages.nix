{ pkgs, inputs, ... }:

let
  rose-pine-gtk-fixed = pkgs.rose-pine-gtk-theme.overrideAttrs (old: {
    postInstall = (old.postInstall or "") + ''
      chmod -R u+w $out/share/themes
      for dir in $(find $out/share/themes -type d \( -name "gtk-3.0" -o -name "gtk-3.20" \)); do
        if [ -f "$dir/gtk.css" ] && [ -f "$dir/gtk-dark.css" ]; then
          tmp=$(mktemp)
          mv "$dir/gtk.css" "$tmp"
          mv "$dir/gtk-dark.css" "$dir/gtk.css"
          mv "$tmp" "$dir/gtk-dark.css"
        fi
      done
    '';
  });
  
  pkgs-unstable = import inputs.nixpkgs-unstable {
    system = pkgs.stdenv.hostPlatform.system;
    config.allowUnfree = true;
  };
in
{
  home.packages = with pkgs; [
    fastfetch
    starship
    awww
    rofi
    bottom
    ncpamixer
    playerctl
    swaynotificationcenter
    libnotify
    nwg-look
    rose-pine-gtk-fixed # rose-pine-gtk-theme
    rose-pine-hyprcursor
    rose-pine-cursor
    rose-pine-icon-theme
    qt6Packages.qt6ct
    qt6Packages.qtstyleplugin-kvantum
    rose-pine-kvantum
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
	# inputs.wlctl.packages.${pkgs.stdenv.hostPlatform.system}.default # nmtui
	# speedtest-cli
	
    firefox
    spotify
    onlyoffice-desktopeditors
    mousepad 			# text-editor
    mpv 				# media player
    ristretto 			# image viewer
    atril 				# pdf viewer
    galculator
    gnome-disk-utility
    ferdium
    prismlauncher 		# minecraft java
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
