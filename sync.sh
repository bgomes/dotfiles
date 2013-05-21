#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

# git pull

function sync_dot_files() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh"  --exclude "install_deps.sh" --exclude "README.md" -av --no-perms . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	sync_dot_files
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi

unset sync_dot_files
source ~/.zshrc
