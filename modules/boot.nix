{ ... }:

{
#   # systemd-boot
#   boot.loader.systemd-boot.enable = true;
#   boot.loader.efi.canTouchEfiVariables = true;
# 
#   boot.loader.systemd-boot.configurationLimit = 20;

  # grub
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
        wallpapers = [ ../assets/Lofi_Cat.png ];
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

  boot = {
    plymouth = {
      enable = true;
      theme = "bgrt";
    };

    # Enable "Silent boot"
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "rd.udev.log_level=3"
      "rd.systemd.show_status=auto"
    ];

    # Hide the OS choice for bootloaders.
    # It's still possible to open the bootloader list by pressing any key
    # It will just not appear on screen unless a key is pressed
    loader.timeout = 3;
  };
}
