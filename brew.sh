#!/usr/bin/env bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install
brew install brew cleanup
brew install autoconf
brew install bower
brew install coreutils
brew install cscope
brew install docker-clean
brew install findutils
brew install freetype
brew install gdbm
brew install geckodriver
brew install gettext
brew install git
brew install graphicsmagick
brew install heroku
brew install icu4c
brew install jpeg
brew install libevent
brew install libpng
brew install libtiff
brew install libtool
brew install lua
brew install macvim --with-override-system-vim --with-python3 --with-luabrew install macvim
brew install mysql
brew install nasm
brew install node
brew install openssl
brew install openssl@1.1
brew install pcre
brew install pkg-config
brew install postgresql
brew install pyenv
brew install pyenv-virtualenv
brew install python3
brew install readline
brew install reattach-to-user-namespace
brew install redis
brew install selenium-server-standalone
brew install sqlite
brew install tmux
brew install wget
brew install xz
brew install yarn
brew install zsh

# Brew cask install desktop apps
brew cask install android-studio
brew cask install atom
brew cask install firefox
brew cask install flixtools
brew cask install franz
brew cask install google-chrome
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install visual-studio-code
brew cask install vlc

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell
chsh -s /bin/zsh

# Install hersonls theme for zsh
wget https://gist.github.com/hersonls/5449283/raw/ -O ~/.oh-my-zsh/themes/hersonls.zsh-theme

# Install powerline
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/grep.rb
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
