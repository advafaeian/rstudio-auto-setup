USER="hmn"
apt-get --assume-yes update
apt-get --assume-yes install r-base
apt-get --assume-yes install gdebi-core
wget https://download2.rstudio.org/server/jammy/amd64/rstudio-server-2022.12.0-353-amd64.deb
gdebi --non-interactive rstudio-server-2022.12.0-353-amd64.deb
adduser --gecos "" --disabled-password $USER
chpasswd <<<"$USER:$USER"
mkdir /home/$USER/.ssh
chmod 700 /home/$USER/.ssh
sudo cp /root/.ssh/authorized_keys /home/$USER/.ssh/authorized_keys
sudo chown -R $USER:$USER /home/$USER/.ssh
sudo chmod 600 /home/$USER/.ssh/authorized_keys