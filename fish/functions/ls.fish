function ls --wraps='eza -laF --icons' --description 'eza alias for ls'
    eza -laF --icons always --group-directories-first $argv
end
