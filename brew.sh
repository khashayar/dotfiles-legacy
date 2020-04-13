#!/usr/bin/env bash

# install command-line tools using Homebrew.

# ask for the administrator password upfront.
sudo -v

# keep-alive: update existing `sudo` time stamp until `brew.sh` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# make sure we’re using the latest Homebrew.
brew update
brew upgrade

# install GNU core utilities (those that come with OS X are outdated).
# don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# install some other useful utilities like `sponge`.
brew install moreutils
# install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# install bash 4.
# NB! don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash bash-completion

# install and use zsh.
brew install zsh zsh-completions
chsh -s $(which zsh)

# install other useful binaries.
brew install ack
brew install android-sdk
brew install awscli
brew install git
brew install htop
brew install imagemagick --with-webp
brew install lynx
brew install ngrok
brew install node
brew install p7zip
brew install pigz
brew install python
brew install pv
brew install rename
brew install screen
brew install sshfs
brew install stow
brew install tmux
brew install tree
brew install vim --override-system-vi
brew install webkit2png
brew install wget --with-iri
brew install zopfli

# install more recent versions of some OS X tools.
brew install homebrew/dupes/grep

# homebrew Cask
brew tap caskroom/cask

# remove outdated versions from the cellar.
brew cleanup

# used by zsh plugin (colorize)
easy_install Pygments
pip install powerline-status
