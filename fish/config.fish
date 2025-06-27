set -U fish_greeting

# Aliases
alias ls="eza -laF --icons"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias ip="ip --color=auto"
alias fzf="fzf --preview 'bat --color=always {}'"

abbr q exit
abbr vi nvim
abbr vim nvim
abbr glog "git log --all --decorate --graph --oneline --stat"

# Environment variables
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux BAT_THEME GitHub

# Start sway at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec sway
    end
end

starship init fish | source
pfetch
