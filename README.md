# dotfiles

This repo is where I keep my base installation scripts. It saves me time when I need to setup a new system.

It all started because I always forget which PS1 value I have to set to have my branches on the prompt. Tired of searching stack overflow every time, now I can go to my own repo and be happy. ^_^

I don't expect this to be useful to anyone else, but feel free to use it at your own risk.

## Configure github

```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
```

Add key [here](https://github.com/settings/keys)

[Source](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## Usage for Linux

```sh
sudo ./setup_linux.sh <GOVERSION>
source ~/.bash_profile
```
If no GOVERSION is specified, it would by-default install `1.14.2`.