{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.sddmAstronaut = {
    enable = true;
    theme = "jake_the_dog";
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;

  system.stateVersion = "26.05";
}

