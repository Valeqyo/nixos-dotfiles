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

  fileSystems."/mnt/sda2" = {
    device = "/dev/disk/by-uuid/5A9A48D29A48ABF7";
    fsType = "ntfs";
    options = [
      "users"
      "nofail"
      "noauto"
      "x-gvfs-show"
      "uid=1000"
    ];
  };

  fileSystems."/mnt/HDD_Windows" = {
    device = "/dev/disk/by-uuid/14B8FDF8B8FDD866";
    fsType = "ntfs";
    options = [
      "users"
      "nofail"
      "noauto"
      "x-gvfs-show"
      "uid=1000"
    ];
  };
}
