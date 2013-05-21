# Hersonls dotfiles

This is my version from [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)

## How to install

### Using Git and the sync script

You can clone the repository:

```bash
git clone git@github.com:hersonls/dotfiles.git && cd dotfiles && source sync.sh
```

To update, `cd` into your local `dotfiles` repository and then:

Install dependences

```bash
sh install_deps.sh
```

Sync dotfiles

```bash
source sync.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source sync.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/hersonls/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,sync.sh}
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.


### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./.brew
```

## Want improve my workflow?

Send a pullrequest to this repo :D

