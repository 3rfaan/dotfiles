# Add GO binaries to PATH
if not contains "$HOME/go/bin" $PATH
    fish_add_path $HOME/go/bin
end
