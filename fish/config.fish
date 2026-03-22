# Use VIM keybindings
set -g fish_key_bindings fish_vi_key_bindings

# Abbreviations
abbr q exit

abbr gs "git status --short"
abbr gd "git diff"
abbr gl "git log --graph --oneline --stat"
abbr gp "git log --patch --relative-date"

abbr cb "cargo build"
abbr cr "cargo run --quiet"
abbr ct "cargo test"
abbr clippy "cargo clippy"

abbr vi nvim
abbr vim nvim

abbr tm tmux
abbr ff fastfetch
abbr lg lazygit

# Environment variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx BAT_THEME "Catppuccin Latte"

# Load Homebrew environment
eval (/opt/homebrew/bin/brew shellenv)

# Autostart
starship init fish | source
