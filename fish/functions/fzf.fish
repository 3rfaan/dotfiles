function fzf --description 'fzf command using bat for preview and Neovim as editor'
    command fzf \
        --preview 'bat --color=always {}' \
        --bind 'enter:become(nvim {})'
end
