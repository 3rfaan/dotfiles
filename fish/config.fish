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

abbr tm tmux
abbr ff fastfetch
abbr lg lazygit

# Environment variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx BAT_THEME "Catppuccin Frappe"

# Load Homebrew environment
eval (/opt/homebrew/bin/brew shellenv)

# Autostart
starship init fish | source
pfetch
