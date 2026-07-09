{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode.profiles.default.extensions; [
      #dracula-theme.theme-dracula
    ];
  };
}
