#!/usr/bin/env bash

# Install applications using Cask

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `brew-cask.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Cask
brew update
brew upgrade brew-cask

# Tap Caskroom
brew tap caskroom/versions

# Install apps in /Applications
# export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install applications
brew cask install anki
brew cask install bartender
brew cask install caffeine
brew cask install dash
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install monitorcontrol
brew cask install mou
brew cask install onepassword
brew cask install osxfuse
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package
brew cask install rectangle
brew cask install slack
brew cask install skype
brew cask install viber
brew cask install virtualbox
brew cask install vlc

# Remove outdated versions from the cellar
brew cleanup
brew cask cleanup
