{ pkgs, ... }:

{
  boot.kernelModules = [ "i2c-dev" ];
  hardware.i2c.enable = true;

  services.hardware.openrgb = {
    enable = true;
    package = pkgs.openrgb-with-all-plugins;
    motherboard = "intel";
  };
}
