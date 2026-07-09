{ config , ... }:

{
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false; # true
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true; # Nvidia settings menu
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  };
}
