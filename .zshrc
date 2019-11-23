  1 # Path to your oh-my-zsh installation.
  2 export ZSH="/Users/timliu/.oh-my-zsh"
  3
  4 # zsh theme
  5 ZSH_THEME="powerlevel10k/powerlevel10k"
  6
  7 # Which plugins would you like to load?
  8 # Standard plugins can be found in ~/.oh-my-zsh/plugins/*
  9 # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
 10 # Example format: plugins=(rails git textmate ruby lighthouse)
 11 # Add wisely, as too many plugins slow down shell startup.
 12
 13 plugins=(
 14     git
 15     zsh-autosuggestions
 16     zsh-syntax-highlighting
 17     autojump
 18     zsh-completions
 19 )
 20
 21 POWERLEVEL9K_MODE="awesome-patched"
 22
 23 source $ZSH/oh-my-zsh.sh
 24
 25
 26 # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh (this edits the theme)
 27 [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
