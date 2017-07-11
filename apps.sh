sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:screenlets/ppa
sudo add-apt-repository -y ppa:linuxthebest.net/sopcast
sudo apt-get update && \
sudo apt-get --assume-yes install \
p7zip-full \
clementine \
zip \
net-tools \
openssl \
nano \
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
openssh-server \
software-properties-common \
psmisc \
pg-activity \
bash-completion \
whois \
git \
phppgadmin \
sublime-text-installer \
terminator \
guake \
clipit \
filezilla \
chromium-browser \
gksu \
aptitude \
alacarte \
gcolor2 \
screen \
unzip \
strace \
shutter \
screenlets \
screenlets-pack-all \
kazam \
vlc \
unetbootin \
hostapd \
gdebi-core \
aptitude \
python-apsw \
python-m2crypto \
python-appindicator \
libx11-dev \
sopcast-player \
pavucontrol

# Remove sopcast repository because it will not be updated
sudo add-apt-repository --remove -y ppa:linuxthebest.net/sopcast

# VlSub
wget https://github.com/exebetche/vlsub/archive/master.zip
unzip master.zip
sudo cp vlsub-master/vlsub.lua /usr/lib/vlc/lua/extensions/

# Open as admin script
cp open-as-administrator ~/.local/share/nautilus/scripts
chmod 0755 ~/.local/share/nautilus/scripts/open-as-administrator

# Bash it framework
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

# Xampp dashboard desktop
cp xampp.desktop ~/.local/share/applications/

# Restricted extras (multimedia plugins)
sudo apt-get -qq -y install ubuntu-restricted-extras

# Acestream
sudo gdebi --n acestream_ubuntu_64/libgnutls-deb0-28_3.3.15-5ubuntu2_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-engine_3.0.5.1-0.2_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-player-data_3.0.2-1.1_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-player-compat_3.0.2-1.1_amd64.deb
sudo gdebi --n acestream_ubuntu_64/acestream-player_3.0.2-1.1_amd64.deb
# TODO add acestream icon
