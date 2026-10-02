{ pkgs, ... }:

{
  programs.vscode = {
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
         mvllow.rose-pine
         sumneko.lua
         ms-vscode.cpptools           # C/C++ Tools \u2014 IntelliSense e debug (la principale)
         ms-vscode.cmake-tools        # CMake Tools \u2014 build/gestione progetti CMak
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "octave";
          publisher = "toasty-technologies";
          version = "0.0.3";   # prendila dalla pagina del Marketplace
          sha256 = "sha256-tbqblaBX+wqgasfGLsFp49xYxXi5CF39YPYs0QyANt0=";         # lascia vuoto: il build fallirà e ti stamperà l'hash giusto
        }
        {
          name = "octaveexecution";
          publisher = "lucasfa";
          version = "0.7.6";   # prendila dalla pagina del Marketplace
          sha256 = "sha256-oQ8Bwo7bCb0ecHrJz84Uisc4WgbuByfEol3luHZfSB8=";         # lascia vuoto: il build fallirà e ti stamperà l'hash giusto
        }
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
