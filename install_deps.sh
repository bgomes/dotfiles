#/bin/env sh

# This is some things to install before all

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://github.com/rupa/z
mkdir -p ~/code/opensource/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/code/opensource/z/z.sh
chmod +x ~/code/opensource/z/z.sh

# For the c alias (syntax highlighted cat)
sudo easy_install Pygments