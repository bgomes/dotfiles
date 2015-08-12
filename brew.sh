#!/usr/bin/env bash

# Install brew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

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

# Install node
brew install node
. <(npm completion)

# Install grunt
npm install grunt grunt-cli -g

# Install python
brew install python
brew install python3

# reattach-to-user-namespace
brew install reattach-to-user-namespace

# Install other useful binaries
brew install git

brew tap homebrew/versions

# Remove outdated versions from the cellar
brew cleanup
