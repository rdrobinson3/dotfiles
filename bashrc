source  /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

source ~/git-completion.bash

if [ -f ~/.privatealiases ]; then
  . ~/.privatealiases  # --> Read in my private aliases if present. Use for things not stored on github
fi

alias macwired='ifconfig en0 | grep ether'
alias macwireless='ifconfig en1 | grep ether'

export ANDROID_HOME="/Users/trey/android-sdk"
export ANDROID_SDK_ROOT="/Users/trey/android-sdk"

export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/build-tools/21.1.1:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

export GRADLE_HOME="/opt/gradle"
export PATH=$PATH:$GRADLE_HOME/bin

export PATH=$PATH:$HOME/dex2jar

export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"

export WORKON_HOM=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
