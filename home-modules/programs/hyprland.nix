{ pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.systemd.enable = false;
}
