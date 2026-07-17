fastfetch

if status is-interactive
    starship init fish | source
end

set -U fish_greeting

alias up="git -C ~/nixos-dotfiles add . && sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw"
alias update="~/nixos-dotfiles/scripts/update"
alias config="cd ~/nixos-dotfiles/config"
alias pkillhp="pkill -f systray.py"
alias clear="clear && fastfetch"
