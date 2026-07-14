{ ... }:

{
  networking.hostName = "nixos-btw"; # Define your hostname.

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;
  networking.networkmanager.wifi.powersave = false;

  boot.extraModprobeConfig = ''
    options iwlwifi power_save=0
  '';
}
