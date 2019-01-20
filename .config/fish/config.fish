# install `fisher` package manager
# https://github.com/jorgebucaran/fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# editor
set -gx EDITOR 'vim'

## aliases

# git
alias add      'git add'
alias amend    'git amend'
alias branches 'git branches'
alias ci       'git ci'
alias co       'git co'
alias di       'git diff'
alias diw      'git diw'
alias fetch    'git fetch'
alias log      'git log'
alias merge    'git merge'
alias pom      'git pom'
alias pull     'git pull'
alias push     'git push'
alias remote   'git remote'
alias remotes  'git remotes'
alias reset    'git reset --hard'
alias st       'git status'
alias tag      'git tag'
alias tags     'git tags'
alias upstream 'git upstream'

# yadm
alias yadd     'yadm add'
alias yci      'yadm commit'
alias ypush    'yadm push'
alias yst      'yadm status'

## path

set -gx PATH $HOME/bin $PATH

## use powerline-go for command prompt
function fish_prompt
    ~/bin/powerline-go -error $status -shell bare -modules host,ssh,venv,cwd,perms,git,jobs -cwd-max-depth 1 -truncate-segment-width 8
end

## turn off fish greeting
set fish_greeting
