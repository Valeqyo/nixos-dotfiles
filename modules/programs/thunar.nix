{ pkgs, ... }:

{
  # FILE MANAGER THUNAR
  programs.xfconf.enable = true;
  services.gvfs.enable = true;
  services.tumbler.enable = true;

  programs.thunar = {
    plugins = with pkgs; [
      thunar-archive-plugin
      thunar-volman
    ];
  };
}
