#!/bin/sh

defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock largesize -int 90
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock show-recents -bool false

# Enable option to show battery number
defaults write com.apple.menuextra.battery ShowPercent -bool true

# Enable single-tap on trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true


# Make dock reveal faster
defaults write com.apple.dock autohide-delay -bool false
