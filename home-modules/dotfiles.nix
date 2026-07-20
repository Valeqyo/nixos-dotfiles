{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    hypr = "hypr";
    uwsm = "uwsm";
    kitty = "kitty";
    "starship.toml" = "starship.toml";
    fish = "fish";
    waybar = "waybar";
    rofi = "rofi";
    swaync = "swaync";
    fastfetch = "fastfetch";
    cliphist = "cliphist";
    satty = "satty";
    avizo = "avizo";
    xfce4 = "xfce4";
    git = "git";
    networkmanager-dmenu = "networkmanager-dmenu";
  };
in
{
  xdg.configFile = builtins.mapAttrs (name: subpath: {
    source = create_symlink "${dotfiles}/${subpath}";
    recursive = true;
  }) configs;
}
