#!/bin/bash

#check if pyrocore was installed.
if [[ ! -x /home/rtorrent/bin/pyroadmin ]]; then
    echo "rutorrent ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    sudo su - rtorrent
    mkdir -p ~/bin ~/.local
    git clone "https://github.com/pyroscope/pyrocore.git" ~/.local/pyroscope
    ~/.local/pyroscope/update-to-head.sh
    echo 'export PATH=$PATH:/home/rtorrent/bin' >> ~/.bashrc
    pyroadmin --version
else
    echo "Pyrocore found."
fi