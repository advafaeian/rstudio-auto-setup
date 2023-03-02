user="hmn"
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install r-base
sudo apt-get --assume-yes install gdebi-core
wget https://download2.rstudio.org/server/jammy/amd64/rstudio-server-2022.12.0-353-amd64.deb
sudo gdebi --non-interactive rstudio-server-2022.12.0-353-amd64.deb
adduser --gecos "" --disabled-password $user
sudo chpasswd <<<"$user:$user"