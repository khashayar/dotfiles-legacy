#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `brew.sh` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
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

# install Bash 4.
# NB! don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash bash-completion

# install and use zsh.
brew install zsh zsh-completions
chsh -s $(which zsh)

# install tmux
brew install tmux

# install stow
brew install stow

# install `wget` with IRI support.
brew install wget --with-iri


# install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen


# install other useful binaries.
brew install ack
brew install android-sdk
brew install git
brew install imagemagick --with-webp
brew install lynx
brew install ngrok
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install tree
brew install webkit2png
brew install zopfli

# install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# install AWS CLI and Docker
brew install awscli

# homebrew Cask
brew tap caskroom/cask

# remove outdated versions from the cellar.
brew cleanup

# used by colorize zsh plugin
easy_install Pygments
