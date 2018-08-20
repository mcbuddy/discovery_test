#!/bin/sh

set -e

if [[ $(command -v brew) == "" ]]; then
    echo "==> Installing Homebrew and all brew dependencies"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew bundle
else
    echo "==> Updating Homebrew and install all brew dependencies"
    brew update
    brew bundle
fi

if [[ $(command -v rvm) == "" ]]; then
    echo "==> Installing rvm"
    \curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable
    type rvm | head -1
    echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
    source ~/.bash_profile
else
    echo "rvm already installed."
fi

if [[ $(ruby -v) != "ruby 2.5.1"* ]]; then
    echo "==> Installing ruby-2.5.1"
    rvm install ruby 2.5.1
else
    echo "ruby-2.5.1 already installed."
fi

echo "==> Installing bundler"
gem install bundler

echo "==> Running bundle install"
bundle install