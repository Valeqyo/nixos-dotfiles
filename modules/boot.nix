{ ... }:

{
#   # Use the systemd-boot EFI boot loader.
#   boot.loader.systemd-boot.enable = true;
#   boot.loader.efi.canTouchEfiVariables = true;
# 
#   boot.loader.systemd-boot.configurationLimit = 20;

  # boot.loader = {
  #   grub = {
  #     enable = true;
  #     device = "nodev"; # "nodev" is used for UEFI
  #     efiSupport = true;
  #     useOSProber = true;
  #     configurationLimit = 20;
  #   };
  #   efi.canTouchEfiVariables = true;
  # };

  boot.loader = {
    limine = {
      enable = true;
      maxGenerations = 20;
      enableEditor = false;
      resolution = "1920x1080";
      style = {
        wallpapers = [ ../assets/Lowpoly_Street.png ];
        wallpaperStyle = "stretched";
        interface.brandingColor = "c4a7e7";
      };
      extraEntries = ''
        /Windows
        comment: Boot into Windows
        protocol: efi
        path: guid(8166987e-4647-4b7b-b22c-6e03dc8d1051):/EFI/Microsoft/Boot/bootmgfw.efi
      
        /openSUSE
        comment: Boot into openSUSE (temporaneo, da rimuovere quando la elimini)
        protocol: efi
        path: guid(8166987e-4647-4b7b-b22c-6e03dc8d1051):/EFI/systemd/systemd-bootx64.efi
      '';
    };
    efi.canTouchEfiVariables = true;
  };
}
