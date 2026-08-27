{ ... }:

{
  nix.optimise = {
    automatic = true;
    dates = "weekly";
  };

  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 10d";
  };

  services.fstrim.enable = true;

  programs.gamemode.enable = true; # gamemoderun ./game
								   # steam - gamemoderun %command%
								   # gamemoderun application
}
