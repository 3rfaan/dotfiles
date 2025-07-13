# Aliases
# alias -s diff="diff --color=auto"
# alias -s fzf="fzf --preview 'bat --color=always {}'"
# alias -s grep="grep --color=auto"
# alias -s ip="ip --color=auto"
# alias -s ls="eza -laF --icons"

# Abbreviations
abbr c cargo
abbr ff fastfetch
abbr glog "git log --all --decorate --graph --oneline --stat"
abbr q exit
abbr vi nvim
abbr vim nvim

# Environment variables
set -gx BAT_THEME GitHub
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER "less -RF --use-color"
set -gx MANPAGER "less -RF --use-color"

set -g fish_key_bindings fish_vi_key_bindings

# Start sway at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec sway
    end
end

starship init fish | source
pfetch
