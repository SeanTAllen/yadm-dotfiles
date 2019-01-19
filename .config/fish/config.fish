set -gx EDITOR 'vim'

## use powerline-go for command prompt
function fish_prompt
    ~/bin/powerline-go -error $status -shell bare
end

## turn off fish greeting
set fish_greeting
