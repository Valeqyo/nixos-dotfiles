{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    

    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
         mvllow.rose-pine
      ];
      userSettings = {
         "workbench.colorTheme" = "Rosé Pine";
         "workbench.iconTheme" = "rose-pine-icons";
      };
    };
  };

  home.activation.removeOldVSCodeBackup = ''
    rm -f ~/.config/Code/User/settings.json.backup
  '';
}
