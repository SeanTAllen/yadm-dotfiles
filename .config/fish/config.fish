# install `fisher` package manager
# https://github.com/jorgebucaran/fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# editor
set -gx EDITOR 'vim'

# allow GPG to prompt for passphrase
set -x GPG_TTY (tty)

## abbreviations

# git
abbr add      'git add'
abbr amend    'git amend'
abbr amne     'git amne'
abbr branches 'git branches'
abbr ci       'git ci'
abbr co       'git co'
abbr di       'git diff'
abbr diw      'git diw'
abbr fetch    'git fetch'
abbr log      'git log'
abbr merge    'git merge'
abbr pn       'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
abbr pom      'git pom'
abbr pull     'git pull'
abbr push     'git push'
abbr pwl      'git pwl'
abbr remote   'git remote'
abbr remotes  'git remotes'
abbr reset    'git reset --hard'
abbr st       'git status'
abbr tag      'git tag'
abbr tags     'git tags'
abbr upstream 'git upstream'

# yadm
abbr yadd     'yadm add'
abbr yci      'yadm commit'
abbr ypull    'yadm pull'
abbr ypush    'yadm push'
abbr yst      'yadm status'

# standard typos
abbr mkidr     mkdir

# make ls not awful
abbr ls       'ls -v --color'

## path
set -gx PATH /usr/local/share/dotnet/ /opt/homebrew/bin $HOME/.local/share/ponyup/bin $HOME/bin $HOME/.local/bin $PATH

## turn off fish greeting
set fish_greeting

## turn on starship for prompt
starship init fish | source

## set GOPATH
set -gx GOPATH $HOME/go

## delete word
bind deleteword backward-kill-word

