#!/bin/bash

##  começando!

##tirando travas!

## sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ; 

sudo apt update

mkdir /home/$USER/Downloads/apps-para-baixar-no-linux/
cd /home/$USER/Downloads/apps-para-baixar-no-linux

## configurando o asdf!

sudo apt install build-essential git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip curl zlib1g-dev sqlite3 libsqlite3-dev

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo "$HOME/.asdf/asdf.sh" >> ~/.bashrc
echo "$HOME/.asdf/completions/asdf.bash" >> ~/.bashrc

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 14.15.4 ; asdf install nodejs 15.5.1 

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 2.7.2

asdf plugin-add java https://github.com/halcyon/asdf-java.git

## terminado!

cd /home/$USER/Downloads/apps-para-baixar-no-linux

## baixando o dotnet!

##chaves do dotnet

wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

##dotnet (SDK)
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

##runtime
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-5.0

##baixando o mono!
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel -y

sudo add-apt-repository ; ppa:otto-kesselgulasch/gimp ;  ppa:thomas-schiex/blender ; ppa:inkscape.dev/stable ; ppa:kdenlive/kdenlive-stable ; ppa:lutris-team/lutris ; ppa:a-v-shkop/chromium-dev -y

sudo apt-get update

sudo apt snapd; gimp ; blender ; inkscape  ; lutris ; chromium-browser -y

sudo apt update

sudo snap install keepassxc ; vlc ; spotify ; code --classic ; flutter --classic ; android-studio --classic -y

cd /home/$USER/Downloads/apps-para-baixar-no-linux/arquivos-tar

wget https://pt.wordpress.org/latest-pt_PT.tar.gz -o wordpress.tar.gz

wget https://downloadsapachefriends.global.ssl.fastly.net/8.0.0/xampp-linux-x64-8.0.0-3-installer.run?from_af=true -o xampp.run

wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage -o unity3d.AppImage
