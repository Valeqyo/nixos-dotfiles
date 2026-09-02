{ config, pkgs, lib, ... }:

{
  xdg = {
    userDirs = {
      enable = true;

      desktop = "${config.home.homeDirectory}/Desktop";
      documents = "${config.home.homeDirectory}/Documents";
      download = "${config.home.homeDirectory}/Downloads";
      music = "${config.home.homeDirectory}/Music";
      pictures = "${config.home.homeDirectory}/Pictures";
      publicShare = "${config.home.homeDirectory}/Public";
      templates = "${config.home.homeDirectory}/Templates";
      videos = "${config.home.homeDirectory}/Videos";
      projects = null;
	  
      extraConfig = {
        XDG_SCREENSHOTS_DIR = "${config.home.homeDirectory}/Pictures/screenshots";
        XDG_RECORDINGS_DIR = "${config.home.homeDirectory}/Videos/recordings";
      };

      createDirectories = true;
    };

    configFile = {
      "autostart/nm-applet.desktop".text = ''
      	    [Desktop Entry]
      	    Hidden=true
      	  '';	
      "autostart/blueman.desktop".text = ''
          	[Desktop Entry]
          	Hidden=true
        '';
      "autostart/OpenRGB.desktop".text = ''
     		[Desktop Entry]
		    Hidden=true
        '';
      "Kvantum/rose-pine-iris".source =
          "${pkgs.rose-pine-kvantum}/share/Kvantum/themes/rose-pine-iris";
    };
  };

  # home.file.".local/share/applications/wlctl.desktop".text = ''
  #   [Desktop Entry]
  #   Type=Application
  #   Name=WiFi
  #   Comment=Gestisci le connessioni WiFi
  #   Exec=kitty --title=wlctl -e wlctl
  #   Icon=network-wireless
  #   Terminal=false
  #   Categories=Network;
  # '';
}
