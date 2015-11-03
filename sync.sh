#!/usr/bin/env bash

git pull

function sync_dot_files() {
  for file in "$(cd $(dirname 'dots'); pwd)/$(basename 'dots')"/*
  do
    dotfile=".${file##*/}"
    dest="${HOME}/${dotfile}"
    ln -s $file $dest
  done
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    sync_dot_files
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sync_dot_files
    fi
fi

unset sync_dot_files
