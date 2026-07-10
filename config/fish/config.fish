if status is-interactive
    starship init fish | source
end

set -U fish_greeting

alias up="sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw"
alias update="~/nixos-dotfiles/scripts/update"
