{ config, pkgs, lib,  ...  }:

let
  sddm-astronaut = (pkgs.sddm-astronaut.override {
  embeddedTheme = config.services.sddmAstronaut.theme;  # or any other theme
});

in
{

  options.services.sddmAstronaut = {

    enable = lib.mkEnableOption "Enable sddm-astronaut theme";

    theme = lib.mkOption {
      type = lib.types.str;
      default = "hyprland_kath";
      description = "Theme used by sddm-astronaut";	
    };
  };

  config = lib.mkIf config.services.sddmAstronaut.enable {
    services.displayManager.sddm = {
    enable = true;
	  wayland.enable = true;
	  package = pkgs.kdePackages.sddm;
	  extraPackages = with pkgs; [
	    kdePackages.qtmultimedia
	  ];
	  theme = "sddm-astronaut-theme";
    };

    environment.systemPackages = [
      sddm-astronaut
    ];
  };
}
