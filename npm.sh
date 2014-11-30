#!/usr/bin/env bash

# Install npm packages

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `npm.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

npm install -g bower
npm install -g cordova
npm install -g grunt-cli
npm install -g gulp
npm install -g ionic
npm install -g ios-deploy
npm install -g ios-sim
npm install -g jshint
npm install -g node-inspector
npm install -g strongloop
npm install -g yo
