set -U fish_greeting

# Aliases
alias diff="diff --color=auto"
alias fzf="fzf --preview 'bat --color=always {}'"
alias grep="grep --color=auto"
alias ip="ip --color=auto"
alias ls="eza -laF --icons"

abbr c cargo
abbr ff fastfetch
abbr glog "git log --all --decorate --graph --oneline --stat"
abbr q exit
abbr vi nvim
abbr vim nvim

# Environment variables
set -Ux BAT_THEME GitHub
set -Ux EDITOR nvim
set -Ux VISUAL nvim

# Start sway at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec sway
    end
end

starship init fish | source
pfetch
