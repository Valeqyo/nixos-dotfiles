{ ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = 1;
    MOZ_ENABLE_WAYLAND = 1;
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
  };

  security.pam.services.hyprlock = {};
  
  security.polkit.enable = true;
  
  programs.dconf.enable = true;

  services.gnome.gnome-keyring.enable = true;
  security.pam.services.sddm.enableGnomeKeyring = true;
}
