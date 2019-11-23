# Path to your oh-my-zsh installation.
export ZSH="/Users/timliu/.oh-my-zsh"

# zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    autojump
    zsh-completions
    vi-mode
)


POWERLEVEL9K_MODE="awesome-patched" 

source $ZSH/oh-my-zsh.sh

# Vi Mode

# Change cursor shape for different vi modes.
function zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}

zle -N zle-line-init

echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# By default, there is a 0.4 second delay after you hit the <ESC> key and when the mode change is registered. This results in a very jarring and frustrating transition between modes. Let's reduce this delay to 0.1 seconds.
export KEYTIMEOUT=1


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh (this edits the theme)
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
