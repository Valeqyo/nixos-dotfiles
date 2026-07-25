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
    };
  };
}
