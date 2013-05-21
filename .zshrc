# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hersonls"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Add `~/bin` to the `$PATH`
export PATH="/usr/local/share/python/:/usr/local/share/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/local/share/npm/bin:$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Autocomplete Grunt commands
which grunt > /dev/null && eval "$(grunt --completion=bash)"

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Update python path
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# Virtualenvwrapper Settings
VIRTUALENVWRAPPER=/usr/local/share/python/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
 
if [ -f ${VIRTUALENVWRAPPER} ]; then
    source ${VIRTUALENVWRAPPER}
fi
 
# PIP Settings
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache/

# Customize to your needs...
export PATH=:$PATH

# Python 2.7.4
alias mkve='mkvirtualenv --no-site-packages --python=/usr/local/Cellar/python/2.7.4/bin/python'

# Python 3.2
alias mkve3='mkvirtualenv --no-site-packages --python=/usr/local/Cellar/python3/3.3.1/bin/python3'
