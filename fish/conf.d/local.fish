# Add ~/.local to PATH
if not contains "$HOME/.local/bin" $PATH
    fish_add_path "$HOME/.local/bin"
end
