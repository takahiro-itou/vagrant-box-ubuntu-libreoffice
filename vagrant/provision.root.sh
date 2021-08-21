#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt  update

export DEBIAN_FRONTEND=noninteractive
sudo  -E  apt  upgrade -y

sudo  apt  install -y  build-essential                          \
    cmake  doxygen  emacs  git  mercurial                       \
    autoconf  automake   clang  gcc  g++                        \
    libcppunit-dev  libtool  ncurses-dev                        \
    make  time  sudo                                            \
    language-pack-ja-base  language-pack-ja                     \
    fcitx  fcitx-mozc  ibus-mozc

sudo  apt  install -y  ubuntu-desktop
sudo  apt  install -y  qemu

# clean up
sudo  apt  -y  --purge  autoremove
sudo  apt  autoclean
sudo  apt  clean

sudo  rm -f  /var/lib/apt/lists/lock
sudo  rm -f  /var/cache/apt/archives/lock
sudo  rm -f  /var/lib/dpkg/lock

sudo  rm  -rf  /tmp/*
sudo  dd  if=/dev/zero  of=zero  bs=4k  || :
sudo  rm  -f   zero

history  -c
