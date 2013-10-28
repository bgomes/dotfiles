# Path to your oh-my-zsh configuration.
# 
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hersonls"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Disable autocorrect
unsetopt correct

# Add `~/bin` to the `$PATH`
# 
export PATH="/usr/local/share/python/:/usr/local/share/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/local/share/npm/bin:$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# 
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Autocomplete Grunt commands
# 
which grunt > /dev/null && eval "$(grunt --completion=bash)"

# If possible, add tab completion for many more commands
# 
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Z
# 
[ -f ~/Code/opensource/z/z.sh ] && . ~/Code/opensource/z/z.sh


#                  == Snake Section ==
#
#
#                  .?77777777777777$.            
#                  777..777777777777$+           
#                 .77    7777777777$$$           
#                 .777 .7777777777$$$$           
#                 .7777777777777$$$$$$           
#                 ..........:77$$$$$$$           
#          .77777777777777777$$$$$$$$$.=======.  
#         777777777777777777$$$$$$$$$$.========  
#        7777777777777777$$$$$$$$$$$$$.========= 
#        77777777777777$$$$$$$$$$$$$$$.========= 
#        777777777777$$$$$$$$$$$$$$$$ :========+.
#        77777777777$$$$$$$$$$$$$$+..=========++~
#        777777777$$..~=====================+++++
#        77777777$~.~~~~=~=================+++++.
#        777777$$$.~~~===================+++++++.
#        77777$$$$.~~==================++++++++: 
#         7$$$$$$$.==================++++++++++. 
#         .,$$$$$$.================++++++++++~.  
#                 .=========~.........           
#                 .=============++++++           
#                 .===========+++..+++           
#                 .==========+++.  .++           
#                  ,=======++++++,,++,           
#                  ..=====+++++++++=.            
#                        ..~+=...     
# 
# 
#                All cool stuff come now!
#                        

# Update python path
# 
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"


# Virtualenvwrapper Settings
# 
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER=/usr/local/bin/virtualenvwrapper.sh

[ -f ${VIRTUALENVWRAPPER} ] && source ${VIRTUALENVWRAPPER}

 
# PIP Cache
# 
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache/


