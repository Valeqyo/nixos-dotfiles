{ ... }:

{
#   # Use the systemd-boot EFI boot loader.
#   boot.loader.systemd-boot.enable = true;
#   boot.loader.efi.canTouchEfiVariables = true;
# 
#   boot.loader.systemd-boot.configurationLimit = 20;
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev"; # "nodev" is used for UEFI
      efiSupport = true;
      useOSProber = true;
      configurationLimit = 20;
    };
    efi.canTouchEfiVariables = true;
  };
}
