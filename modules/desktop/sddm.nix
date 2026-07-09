{ pkgs, ...  }:

let
  sddm-astronaut = (pkgs.sddm-astronaut.override {
    embeddedTheme = "hyprland_kath";  # or any other theme
  });

in
{
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
}
