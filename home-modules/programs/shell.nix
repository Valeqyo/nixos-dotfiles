{ ... }:

{
  programs.bash = {
    shellAliases = {
      btw = "echo I use nixos, btw";
      up = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
      update = "~/nixos-dotfiles/scripts/update";
    };
  };
}
