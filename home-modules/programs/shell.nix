{ ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos, btw";
      up = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
      update = "~/nixos-dotfiles/scripts/update";
    };
  };
  
  programs.fish = {
     enable = true;
     interactiveShellInit = ''set fish_greeting'';

     shellAliases = {
       up = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
       update = "~/nixos-dotfiles/scripts/update";
     };
  };
}
