#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#Terminal prompt colourization
PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '


eval $(dircolors -b)

#Set the output colouriser path cope-git
export PATH=$(cope_path):$PATH

# USe < | ccze -A > to colourise

#Source highlight for less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
export PATH=$HOME/local/bin:$PATH

# SVN tweaks for svn - colured output
source /home/udoluweera/Scripts/svn-tweaks

alias grep='grep --color=auto'
alias co='ccze -A'
alias rm='trash-put'
alias sl='subl'

#settings for vimpager package
export PAGER='vimpager'
alias less=$PAGER

alias rm=' timeout 3 rm -Iv --one-file-system'
alias dm='killall conky && xrandr --auto --output VGA1 --mode 1920x1080 --right-of LVDS1 && sleep 3s && conky -c /home/udoluweera/conky-manager/themes/future_conky/config/conkyrc1 &'
alias dmr='xrandr --auto --output VGA1 --mode  1920x1080 --left-of LVDS1'

alias nmc='printf "\e[%sm%s\e[37m\n"' 
#alias ant='ant -logger org.apache.tools.ant.listener.AnsiColorLogger'
alias youtube-dl-a='youtube-dl --extract-audio --audio-format mp3'

#PS1='[\u@\h \W]\$ '  # Default
#PS1='\[\e[1;37m\][\u@\h \W]\$\[\e[0m\] '


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



