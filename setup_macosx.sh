#!/usr/bin/env bash

TAG=`date +%Y%m%d%H%M%S`

install_homebrew () {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

install_dotfiles () {
    cp $HOME/.bash_profile $HOME/.bash_profile.$TAG
    cp .bash_profile $HOME/.bash_profile
}

install_homebrew
install_dotfiles