{ pkgs, ... }:

{
  users.users.comar = {
    isNormalUser = true;
    shell = pkgs.fish;

  extraGroups = [
    "wheel" # sudo
    "networkmanager"
  ];

  packages = with pkgs; [
      tree
    ];
  };
}
