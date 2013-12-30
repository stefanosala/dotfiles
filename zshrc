ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:$PATH"
export EDITOR='vim'
export NOTIFY=terminal-notifier

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
