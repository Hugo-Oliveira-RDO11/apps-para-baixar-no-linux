#!/bin/bash

##  começando!

##tirando travas!

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ; 

sudo apt update

## configurando o asdf!

sudo apt install build-essential git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip curl zlib1g-dev sqlite3 libsqlite3-dev openjdk-8-jdk apache2 mysql-server php libapache2-mod-php php-mysql

##falta
##configurar o mysql, o flutter, e configurar o asdf


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
sudo apt install mono-devel -y;

##adicionando repositorios

sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y;
sudo add-apt-repository ppa:thomas-schiex/blender -y;
sudo add-apt-repository ppa:inkscape.dev/stable -y;
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y;
sudo add-apt-repository ppa:lutris-team/lutris -y;
sudo add-apt-repository ppa:a-v-shkop/chromium-dev -y;

sudo apt-get update;

##parte dos apps baixados por apt

sudo apt install snapd -y;
sudo apt install gimp -y;
sudo apt install blender -y;
sudo apt install inkscape -y;
sudo apt install lutris -y;
sudo apt install chromium-browser -y ;

sudo apt update

##parte dos apps baixados por snap

sudo snap install keepassxc ;
sudo snap install vlc ;
sudo snap install spotify ;
sudo snap install code --classic -y;
sudo snap install flutter --classic ;
sudo snap install android-studio --classic ;
sudo snap install postman ;

#talvez para o vscode(extensões!)


##parte para o flutter!



git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo -e "$HOME/.asdf/asdf.sh" >> ~/.bashrc
echo -e "$HOME/.asdf/completions/asdf.bash" >> ~/.bashrc
source ~/.bashrc

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install nodejs 14.15.4
asdf install ruby 3.0.0