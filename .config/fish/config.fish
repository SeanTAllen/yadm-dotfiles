set -gx EDITOR 'vim'

## use powerline-go for command prompt
function fish_prompt
    ~/bin/powerline-go -error $status -shell bare -modules venv,ssh,cwd,perms,git,jobs -cwd-max-depth 1 -truncate-segment-width 8
end

## turn off fish greeting
set fish_greeting
