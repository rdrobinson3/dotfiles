# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
# Mac OS
#export ZSH="/Users/trey/.oh-my-zsh"
#Linux
export ZSH="/home/trey/.oh-my-zsh"

# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="powerlevel10k/powerlevel10k"
# export ZSH_THEME="agnoster"

plugins=(colorize compleat dirpersist git gulp history cp aws)
source $ZSH/oh-my-zsh.sh

lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  lazynvm 
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

dynamo(){
 cd $HOME/dynamolocal
 java -Djava.library.path=./DynamoDBLocal_lib/ -jar DynamoDBLocal.jar
}

# Customize to your needs...
unsetopt correct

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export AWS_SDK_LOAD_CONFIG=true
export AWS_PROFILE="kryo-dev-admin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/trey/.sdkman"
[[ -s "/home/trey/.sdkman/bin/sdkman-init.sh" ]] && source "/home/trey/.sdkman/bin/sdkman-init.sh"
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GOPRIVATE=github.com/OOLER

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
