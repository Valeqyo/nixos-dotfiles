{ pkgs, ... }:

{
  users.users.comar = {
    isNormalUser = true;
    shell = pkgs.fish;

  extraGroups = [
    "wheel" # sudo
    "networkmanager"
    "scanner" 
    "lp"
  ];

  packages = with pkgs; [
      tree
    ];
  };
}
