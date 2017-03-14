#!/bin/bash
sudo apt-get update
sudo apt-get -y dist-upgrade

sudo apt-get install -y vim git

cat <<EOT >> /home/tomas/.bashrc

# Add a custom colour prompt
CUSTOM_PROMPT="~"
bldylw='\e[1;33m'
bldgrn='\e[1;32m'
bldblu='\e[1;34m'
txtrst='\e[0m'
print_before_the_prompt () {
printf "\$bldylw[ \$bldgrn%s@%s: \$bldblu%s \$bldylw]\n\$txtrst" "$USER" "$HOSTNAME" "${PWD/$HOME/$CUSTOM_PROMPT}"
}
PROMPT_COMMAND=print_before_the_prompt
PS1='~> '
EOT

sudo apt-get install -y build-essential module-assistant
sudo m-a prepare

# Mount the VirtualBox Guest Additions CD
# Run VBoxLinuxAdditions.sh as root
# Restart the VM when done

echo "deb https://cloud.r-project.org/bin/linux/ubuntu yakkety/" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

sudo apt-get update
sudo apt-get install -y texlive
sudo apt-get install -y r-recommended

wget --progress=bar:force http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
wget --progress=bar:force http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5_amd64.deb
sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
sudo apt-get install -y libjpeg62
sudo apt-mark hold libgstreamer-plugins-base0.10-0
sudo apt-mark hold libgstreamer0.10
wget --progress=bar:force https://download1.rstudio.org/rstudio-1.0.136-amd64.deb
dpkg -i rstudio-1.0.136-amd64.deb

wget --progress=bar:force https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
bash /home/tomas/Anaconda3-4.3.1-Linux-x86_64.sh
/home/tomas/anaconda3/bin/conda update -y conda

