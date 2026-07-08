{ config, pkgs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    qtile = "qtile";
    kanshi = "kanshi";
    ghossty = "ghossty";
  };
in

{
  home.username = "comar";
  home.homeDirectory = "/home/comar";
  home.stateVersion = "26.05";

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos, btw";
      up = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
    };
  };

  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Valeqyo";
	email = "comariusdorel@gmail.com";
      };

      init.defaultBranch = "main";
    };
  };

  xdg.configFile = builtins.mapAttrs (name: subpath: {
    source = create_symlink "${dotfiles}/${subpath}";
    recursive = true;
  }) configs;

  home.packages = with pkgs; [
    fastfetch
    kanshi
  ];
}
