# Minimal setup for zsh

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

# Python
alias python="python3"
alias pip="pip3"

# ----------------------------------------------------------------------------------------


# AUTO-TAB COMPLITION 

# Double tab to open menu, hjkl - navigation
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Close menu select with Escape
bindkey -M menuselect '\e' send-break


# ----------------------------------------------------------------------------------------


# AUTOSUGGESTIONS

source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# alt a - complete autosuggestion
bindkey '^[a' autosuggest-accept 


# ----------------------------------------------------------------------------------------


# VIM MODE (quite limited)

bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
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

# pasting data with p
bindkey -M vicmd 'p' copy-paste-from-clipboard
zle -N copy-paste-from-clipboard
copy-paste-from-clipboard() {
    BUFFER=$(powershell.exe Get-Clipboard | tr -d '\r')
    CURSOR=$#BUFFER
}


# ----------------------------------------------------------------------------------------


# DBT
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.zsh-plugins/.dbt-completion.bash


# ----------------------------------------------------------------------------------------


# STYLING

# Syntax highlighting 
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable colors and change prompt:
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls --color'
alias ll='ls -al'

# Add git branch to prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
PROMPT='%F{2}%~%f %F{11}$(parse_git_branch)%f%F{250}$%f%b '


