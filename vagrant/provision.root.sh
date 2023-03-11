#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt  update

export DEBIAN_FRONTEND=noninteractive
sudo  -E  apt  upgrade -y

sudo  apt-get  install -y   \
    autoconf                \
    automake                \
    build-essential         \
    clang                   \
    cmake                   \
    doxygen                 \
    emacs                   \
    fcitx                   \
    fcitx-mozc              \
    gcc                     \
    g++                     \
    git                     \
    ibus-mozc               \
    language-pack-ja-base   \
    language-pack-ja        \
    libcppunit-dev          \
    libtool                 \
    ncurses-dev             \
    make                    \
    mercurial               \
    sudo                    \
    time                    \
    ;

sudo  apt-get  install -y  ubuntu-desktop
sudo  apt-get  install -y  qemu

# clean up
sudo  apt-get  -y  --purge  autoremove
sudo  apt-get  autoclean
sudo  apt-get  clean

sudo  rm -f  /var/lib/apt/lists/lock
sudo  rm -f  /var/cache/apt/archives/lock
sudo  rm -f  /var/lib/dpkg/lock

sudo  rm  -rf  /tmp/*
sudo  dd  if=/dev/zero  of=zero  bs=4k  || :
sudo  rm  -f   zero

history  -c
