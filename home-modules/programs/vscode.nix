{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    

    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
         mvllow.rose-pine
         sumneko.lua
      ];
      userSettings = {
         "workbench.colorTheme" = "Rosé Pine";
         "workbench.iconTheme" = "rose-pine-icons";
      };
    };
  };
}
