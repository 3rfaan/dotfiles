# Aliases
# alias -s diff="diff --color=auto"
# alias -s fzf="fzf --preview 'bat --color=always {}'"
# alias -s grep="grep --color=auto"
# alias -s ip="ip --color=auto"
# alias -s ls="eza -laF --icons"

# Use VIM keybindings
set -g fish_key_bindings fish_vi_key_bindings

# Abbreviations
abbr q exit

abbr gs "git status"
abbr gd "git diff"
abbr gl "git log --all --decorate --graph --oneline --stat"

abbr cb "cargo build"
abbr cr "cargo run"
abbr ct "cargo test"
abbr clippy "cargo clippy"

abbr vi nvim
abbr vim nvim

abbr ff fastfetch

# Environment variables
set -gx BAT_THEME GitHub
set -gx TERM tmux-256color
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER "less -RFX --use-color"
set -gx MANPAGER "less -RF --use-color"

set -x DISPLAY :0

# Autostart
starship init fish | source
pfetch
