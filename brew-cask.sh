#!/usr/bin/env bash

# Install applications using Cask.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Cask.
brew update
brew upgrade brew-cask

# Tap Caskroom
brew tap caskroom/versions

# Install applications
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install mysqlworkbench
brew cask install onepassword
brew cask install slack
brew cask install skype
brew cask install sublime-text3
brew cask install testflight
brew cask install utorrent
brew cask install viber
brew cask install virtualbox
brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup
