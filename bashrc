#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias std='stdoutisatty'
alias rm='trash-put'


PS1='[\u@\h \W]\$ '

export EDITOR="geany"


#Source highlight for less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '


# SVN tweaks for svn - colured output
source ~/Scripts/svn-tweaks


## GIT SPECIFIC SETTINGS FROM GOOGLE #######################

# Enable tab completion for GIT
source ~/Scripts/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command promptfor GIT
source ~/Scripts/git-prompt.sh

#Temporarily Commented by me to remove the ugly systemwide look - I better put this is some other way 
# export GIT_PS1_SHOWDIRTYSTATE=1 

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory

# Temporarily commented by me to remove the systemwide ugly look
# export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

## END OF GIT SPECIFIC THINGS ################ 
