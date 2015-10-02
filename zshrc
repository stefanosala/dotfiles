ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"

plugins=(git bundler brew gem rbates)

export PATH="node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:$PATH"
export EDITOR='vim'
export NOTIFY=terminal-notifier

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export SENCHA_CMD_3_0_0="/Users/stefanosala/bin/Sencha/Cmd/4.0.4.84"

export PATH=/Users/stefanosala/bin/Sencha/Cmd/4.0.4.84:/Users/stefanosala/Sites/src/adt-bundle-mac/sdk/tools:/Users/stefanosala/Sites/src/adt-bundle-mac/sdk/platform-tools:$PATH

export PATH=/Users/stefanosala/.composer/vendor/bin:$PATH

export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

ulimit -S -n 2048

eval "$(docker-machine env dev)"

prod() {
  heroku $* -a receiptful-prod;
}

staging() {
  heroku $* -a receiptful-staging;
}
