#!/usr/bin/env bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install wget
brew install wget 

# Install zsh shell
brew install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell
chsh -s /bin/zsh

# Install hersonls theme for zsh
wget https://gist.github.com/hersonls/5449283/raw/ -O ~/.oh-my-zsh/themes/hersonls.zsh-theme

# Install tmux
brew install tmux

# Install powerline
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/grep.rb
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

# Install google chrome
brew cask install google-chrome

# Install node
brew install node
. <(npm completion)

# reattach-to-user-namespace
brew install reattach-to-user-namespace

# Install other useful binaries
brew install git

# Install pyenv
brew install pyenv

# Remove outdated versions from the cellar
brew cleanup
