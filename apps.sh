sudo add-apt-repository -y ppa:linuxthebest.net/sopcast
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update && \
sudo apt-get --assume-yes install \
p7zip-full \
zip \
net-tools \
openssl \
iputils-ping \
vim \
wget \
htop \
apt-utils \
netcat \
curl \
ufw \
locate \
rsync \
man \
sysstat \
dstat \
openssh-client \
software-properties-common \
psmisc \
bash-completion \
whois \
git \
clipit \
filezilla \
gksu \
aptitude \
alacarte \
gcolor2 \
screen \
unzip \
strace \
shutter \
kazam \
unetbootin \
hostapd \
gdebi-core \
aptitude \
python-apsw \
python-m2crypto \
python-appindicator \
libx11-dev \
sopcast-player \
ncdu \
ubuntu-make \
virtualbox

# VS Code
yes | umake ide visual-studio-code --accept-license
echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Visual Studio Code\nIcon=$HOME/code/resources/app/resources/linux/code.png\nExec=\"$HOME/.local/share/umake/bin/visual-studio-code\" %f\nCategories=Development;IDE;\nTerminal=false" > $HOME/.local/share/applications/visual-studio-code.desktop

# Opera
sudo wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
sudo apt update
sudo apt install opera-stable
sudo sed -i "s/Exec=opera %U/Exec=opera %U --start-maximized/g" /usr/share/applications/opera.desktop
sudo ln -sf /usr/lib/chromium-browser/libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so

# Remove sopcast repository because it will not be updated
sudo add-apt-repository --remove -y ppa:linuxthebest.net/sopcast

# VlSub
wget https://github.com/exebetche/vlsub/archive/master.zip
unzip master.zip
sudo cp vlsub-master/vlsub.lua /usr/lib/vlc/lua/extensions/

# Open as admin script
cp open-as-administrator ~/.local/share/nautilus/scripts
chmod 0755 ~/.local/share/nautilus/scripts/open-as-administrator

# Bash-it framework
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

# Restricted extras (multimedia plugins)
sudo apt-get -qq -y install ubuntu-restricted-extras

# Acestream
sudo gdebi --n acestream_ubuntu_64/libgnutls-deb0-28_3.3.15-5ubuntu2_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-engine_3.0.5.1-0.2_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-player-data_3.0.2-1.1_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-player-compat_3.0.2-1.1_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-player_3.0.2-1.1_amd64.deb
