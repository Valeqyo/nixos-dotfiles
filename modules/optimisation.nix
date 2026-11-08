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
								   # gamemoderun applicatio

  # Scheduler per reattività desktop/gaming
  services.scx = {
    enable = true;
    scheduler = "scx_lavd";
  };
  
  # Impostazioni memoria/disco in stile CachyOS
  boot.kernel.sysctl = {
    "vm.swappiness" = 100;
    "vm.vfs_cache_pressure" = 50;
    "vm.dirty_bytes" = 268435456;
    "vm.dirty_background_bytes" = 67108864;
    "vm.dirty_writeback_centisecs" = 1500;
    "vm.page-cluster" = 0;
    "kernel.nmi_watchdog" = 0;
  };
}
