#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt  update

sudo  apt-mark   hold  libssl1.1
sudo  apt  upgrade -y
sudo  apt  install -y  build-essential  mercurial

sudo  apt  install -y  ubuntu-desktop
sudo  apt  install -y  qemu
