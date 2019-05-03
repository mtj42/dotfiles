# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:~/bin

# oh-my-zsh overwrites aliases, so put aliases after sourcing oh-my-zsh
# Specifically, ~/.oh-my-zsh/lib/theme-and-appearance.zsh was overwriting `ls`
# alias to `ls -G`.
source $ZSH/oh-my-zsh.sh

# fzf
# Had to edit this file for some reason
# .oh-my-zsh/lib/completion.zsh:bindkey:13: no such keymap `menuselect'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Bash aliases
alias c="clear"
alias ls='ls -lhG'
alias s="source ~/.zshrc"
alias v="vim ~/.vimrc"
alias z="vim ~/.zshrc; source ~/.zshrc"

# Git aliases
alias ga="git add"
alias gc="git commit"
alias gl="git log"
alias gp="git push"
alias gs="git status"

# Python aliases
alias i="ipython3"
alias p="python3"
alias pip="pip3"
alias python="python3"

# Random aliases
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Themes
#ZSH_THEME="af-magic"
#ZSH_THEME="norm"
ZSH_THEME="steeef"

# Plugins
plugins=(git)


