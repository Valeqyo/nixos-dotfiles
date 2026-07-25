{ pkgs, ... }:

{
  programs.vscode = {
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
         mvllow.rose-pine
         sumneko.lua
         ms-vscode.cpptools           # C/C++ Tools \u2014 IntelliSense e debug (la principale)
         ms-vscode.cmake-tools        # CMake Tools \u2014 build/gestione progetti CMak
      ];
      userSettings = {
         "workbench.colorTheme" = "Rosé Pine";
         "workbench.iconTheme" = "rose-pine-icons";
         "editor.fontFamily" = "'JetBrainsMono Nerd Font Propo', monospace";
         "window.menuBarVisibility" = "visible";
         "explorer.confirmDelete" = false;
         "chat.viewSessions.enabled" = false;
         "editor.scrollOnMiddleClick" = true;
      };
    };
  };
}
