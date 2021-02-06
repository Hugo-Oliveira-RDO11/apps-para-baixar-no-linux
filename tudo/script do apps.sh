#!/bin/bash

##  começando!

##tirando travas!

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ; 

sudo apt update;
sudo apt upgrade -y;

## configurando o asdf!

sudo apt install build-essential git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip curl zlib1g-dev libsqlite3-dev apache2 mysql-server php libapache2-mod-php php-mysql apt-transport-https ca-certificates   curl gnupg-agent software-properties-common;

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

##removendo os aplicativos que eu irei baixar!(caso vc tenha)
sudo apt-get remove docker docker-engine docker.io containerd runc

##baixando as chaves!

wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

##adicionando repositorios

sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y;
sudo add-apt-repository ppa:thomas-schiex/blender -y;
sudo add-apt-repository ppa:inkscape.dev/stable -y;
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y;
sudo add-apt-repository ppa:lutris-team/lutris -y;
sudo add-apt-repository ppa:a-v-shkop/chromium-dev -y;
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list;


sudo apt-get update;

##parte dos apps baixados por apt

sudo apt install snapd -y;
sudo apt install gimp -y;
sudo apt install blender -y;
sudo apt install inkscape -y;
sudo apt install lutris -y;
sudo apt install chromium-browser -y ;
sudo apt install vim -y ;
sudo apt install tmux -y;
sudo apt install tilix -y;
sudo apt install dbeaver-ce;
sudo apt install docker-ce docker-ce-cli containerd.io;

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

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git;
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git;
asdf plugin-add java https://github.com/halcyon/asdf-java.git;
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git;
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git;
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git;
asdf plugin-add kotlin https://github.com/asdf-community/asdf-kotlin.git;
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git;

asdf update;

asdf plugin update --all;
##instalando o java 8 e a mais nova
asdf install java openjdk-16 && asdf global java openjdk-16;
asdf install java adoptopenjdk-8.0.262+10;

asdf install nodejs 14.15.4 && asdf global nodejs 14.15.4;

asdf install ruby 3.0.0 && asdf global ruby 3.0.0;

asdf install erlang 23.2.4 && asdf global erlang 23.2.4;

asdf install golang 1.15.8 && asdf global golang 1.15.8;

asdf install elixir 1.11.3 && asdf global elixir 1.11.3;

asdf install kotlin 1.4.30 && asdf global kotlin 1.4.30;

asdf install rust 1.49.0 && asdf global rust 1.49.0;

sudo usermod -aG docker $USER;
sudo reboot