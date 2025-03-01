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

# make sure we are using vim
abbr vi       vim

## path
set -gx PATH /usr/local/share/dotnet/ /opt/homebrew/bin $HOME/.local/share/ponyup/bin $HOME/bin $HOME/.local/bin $PATH

## turn off fish greeting
set fish_greeting

## Database setup
# Staging
abbr psql_staging_storage "psql -h udp-staging.cluster-clmrcgbyerps.us-east-2.rds.amazonaws.com -d udp_storage_staging -U deploy"
abbr psql_staging_metadata "psql -h udp-staging.cluster-clmrcgbyerps.us-east-2.rds.amazonaws.com -d udp_metadata_staging -U deploy"

# US Production
abbr psql_us_prod_storage "psql -h udp-primary-rld.cluster-ce41ux1tl4wz.us-west-2.rds.amazonaws.com -d udp_storage_production -U deploy"
abbr psql_us_prod_metadata "psql -h udp-primary-rld.cluster-ce41ux1tl4wz.us-west-2.rds.amazonaws.com -d udp_metadata_production -U deploy"

if status is-interactive
  # Commands to run in interactive sessions go here
  # setup atuin
  atuin init fish | source
  # turn on starship for prompt
  starship init fish | source

  ## windows: alt+shift+backspace, mac: opt+shift+backspace
  bind \e\x7F backward-kill-word
  ## ctrl+backspace
  bind ctrl-h backward-kill-word
  bind . 'expand-dot-to-parent-directory-path'
end
