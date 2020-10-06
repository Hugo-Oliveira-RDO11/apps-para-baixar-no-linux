#!/bin/bash

##  começando!

##tirando travas!

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ; 

sudo apt update

mkdir /home/$USER/Downloads/apps-para-baixar-no-linux/
cd /home/$USER/Downloads/apps-para-baixar-no-linux
mkdir arquivos-deb

sudo apt install git -y

sudo apt install nodejs ; default-jdk ; ruby-full -y



git clone https://github.com/daniruiz/flat-remix
git clone https://github.com/daniruiz/flat-remix-gtk
mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/

sudo apt install gnome-tweak-tool -y

cd /home/$USER/Downloads/apps-para-baixar-no-linux

sudo add-apt-repository ppa:alexlarsson/flatpak ; ppa:obsproject/obs-studio ; ppa:otto-kesselgulasch/gimp ; ppa:audacity-team/daily ; ppa:thomas-schiex/blender ; ppa:inkscape.dev/stable ; ppa:stebbins/handbrake-releases ; ppa:kdenlive/kdenlive-stable ; ppa:lutris-team/lutris -y

##flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt-get update

sudao apt-get flatpak ; obs-studio ; gimp ; audacity ; blender ; inkscape ; handbrake-gtk ; kdenlive ; lutris -y

sudo apt update

sudo snap install sublime-text --classic -y

sudo snap install keepassxc ; vlc ; natron ; homeserver -y



cd /home/$USER/Downloads/apps-para-baixar-no-linux/arquivos-deb

wget -c https://az764295.vo.msecnd.net/stable/2af051012b66169dde0c4dfae3f5ef48f787ff69/code_1.49.3-1601661857_amd64.deb 

wget -c https://r1---sn-up4p8xcg-cnce.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz?cms_redirect=yes&mh=Ft&mip=177.66.167.12&mm=28&mn=sn-up4p8xcg-cnce&ms=nvh&mt=1601946677&mv=m&mvi=1&pcm2cms=yes&pl=24&shardbypass=yes 

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 

wegt -c https://download.virtualbox.org/virtualbox/6.1.14/virtualbox-6.1_6.1.14-140239~Ubuntu~eoan_amd64.deb 

wget -c https://repo.steampowered.com/steam/archive/precise/steam_latest.deb 

sudo dpkg -i *.deb -y


sudo dpkg --add-architecture i386 -y
wget -nc https://dl.winehq.org/wine-builds/winehq.key 
sudo apt-key add winehq.key -y
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
sudo apt update
sudo apt install --install-recommends winehq-stable -y
