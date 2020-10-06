#!/bin/bash

##  começando!

##tirando travas!

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ; 

sudo apt update

mkdir /home/$USER/Downloads/apps-para-baixar-no-linux/
cd /home/$USER/Downloads/apps-para-baixar-no-linux
mkdir desinvolvimento mundo-audio-visual o-resto!

sudo apt install git

git clone https://github.com/daniruiz/flat-remix
git clone https://github.com/daniruiz/flat-remix-gtk
mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/

sudo apt install gnome-tweak-tool

cd /home/$USER/Downloads/apps-para-baixar-no-linux

sudo add-apt-repository ppa:alexlarsson/flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo add-apt-repository ppa:obsproject/obs-studio

sudo add-apt-repository ppa:otto-kesselgulasch/gimp

sudo add-apt-repository ppa:audacity-team/daily

sudo add-apt-repository ppa:thomas-schiex/blender

sudo add-apt-repository ppa:inkscape.dev/stable

sudo add-apt-repository ppa:stebbins/handbrake-releases

sudo add-apt-repository ppa:kdenlive/kdenlive-stable

sudo apt-get update

sudao apt-get flatpak ; obs-studio ; gimp ; audacity ; blender ; inkscape ; handbrake-gtk ; kdenlive

sudo apt update

sudo snap install sublime-text --classic

sudo snap install natron

sudo snap install vlc



wget -c https://az764295.vo.msecnd.net/stable/2af051012b66169dde0c4dfae3f5ef48f787ff69/code_1.49.3-1601661857_amd64.deb 

wget -c 