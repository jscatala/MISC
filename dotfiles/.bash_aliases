#General ALIAS
alias °='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias x='exit'
alias ebsh='vim ~/.bashrc'
alias sbsh='source ~/.bashrc'

# install  colordiff package :)
alias diff='colordiff'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
                            

alias mount='mount | column -t'
alias h='history'
alias j='jobs -l'
alias c='clear'
alias xclip='xclip -selection c'
alias pdfview='sh /bin/scripts/pdfview'
######################

#TIME
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
######################



#With priviledge
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get update'
    alias upgrade='sudo apt-get upgrade'
fi
######################

##### VIM #############
VISUAL=/usr/bin/gvim
EDITOR=/usr/bin/vim

export VISUAL
export EDITOR

alias svim='sudo vim'
alias vis='vim "+set si"'
alias edit='vim'
######################

#  NETWORK
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# # Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
######################

#IPTABLES
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist
######################

#do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root' 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

alias psgrep='ps -A | grep'
  
## Get server cpu info ##
alias cpuinfo='lscpu'
   
## older system use /proc/cpuinfo ##
#alias cpuinfo='less /proc/cpuinfo' ##
     
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
