{ ... }:

{
  boot.supportedFilesystems = [ "ntfs" ];

  fileSystems."/mnt/linuxhdd" = {
    device = "/dev/disk/by-uuid/d250d4a3-7d3a-4488-a0dc-87e3f03170a8";
    fsType = "ext4";
    options = [ "users" "nofail" "x-gvfs-show" ];
  };
  
  fileSystems."/mnt/zame" = {
    device = "/dev/disk/by-uuid/EFDF-56DC";
    fsType = "exfat";
    options = [ "users" "nofail" "x-gvfs-show" "uid=1000" ];
  };

  services.udisks2.enable = true;
}
