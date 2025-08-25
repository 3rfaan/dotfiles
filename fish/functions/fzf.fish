function fzf --description "alias fzf=fzf --preview 'bat --color=always {}'"
 command fzf --preview 'bat --color=always {}' $argv
        
end
