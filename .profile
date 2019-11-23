# Add Homebrew's executable directory to the front of the PATH
  2 export PATH=/usr/local/bin:$PATH
  3 export NVM_DIR="$HOME/.nvm"
  4 export PATH=$PATH:/usr/local/go/bin::$GOPATH/bin
  5 export GOPATH=~/dev/stackadapt/go
  6 export GONOPROXY="github.com/StackAdapt"
  7 export GONOSUMDB="github.com/StackAdapt"
  8
  9   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
 10   [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm     bash_completion
 11 export PATH="$HOME/.rbenv/bin:$PATH"
 12 eval "$(rbenv init -)"
