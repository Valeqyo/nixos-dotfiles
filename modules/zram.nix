{ ... }:

{
  zramSwap = {
    enable = true;
    memoryPercent = 50;   # lascialo così se hai RAM sufficiente (8GB+), abbassalo (es. 25-30) se hai poca RAM
    algorithm = "zstd";   # va bene di default; "lz4" se preferisci velocità a compressione leggermente peggiore
    priority = 100;        # alza la priorità così il sistema preferisce zram al disco
  };
  
  systemd.oomd.enable = true;  # raccomandato insieme a zram
}
