#!/usr/bin/env bash

TAG=`date +%Y%m%d%H%M%S`

# Go
OS=linux
ARCH=amd64

if [ -z "$1" ]
then
      VERSION="1.14.2"
      echo "\$VERSION is empty, Proceeding with: $VERSION"
else
      export VERSION=$1
      echo "Your selected version is: $VERSION"
fi

install_vscode () {
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /tmp/microsoft.gpg
    sudo install -o root -g root -m 644 /tmp/microsoft.gpg /etc/apt/trusted.gpg.d/
    sudo echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
    rm /tmp/microsoft.gpg

    sudo apt-get install apt-transport-https
    sudo apt-get update
    sudo apt-get install code
}

install_go () {
    wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz -O /tmp/go$VERSION.$OS-$ARCH.tar.gz
    sudo tar -C /usr/local -xzf /tmp/go$VERSION.$OS-$ARCH.tar.gz
    rm /tmp/go$VERSION.$OS-$ARCH.tar.gz
}

install_dotfiles () {
    cp $HOME/.bash_profile $HOME/.bash_profile.$TAG
    cp .bash_profile $HOME/.bash_profile
}

install_go
install_vscode
install_dotfiles