#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt  update

export DEBIAN_FRONTEND=noninteractive
sudo  -E  apt  upgrade -y

sudo  apt-get  install -y   \
    ant                                 \
    ant-optional                        \
    autoconf                \
    automake                \
    bison                               \
    build-essential         \
    ccache                              \
    clang                   \
    cmake                   \
    default-jdk                         \
    doxygen                 \
    graphviz                            \
    emacs                   \
    fcitx                   \
    fcitx-mozc              \
    flex                                \
    gcc                     \
    g++                     \
    git                                 \
    gperf                               \
    ibus-mozc               \
    junit4                              \
    language-pack-ja-base   \
    language-pack-ja        \
    libavahi-client-dev                 \
    libcppunit-dev          \
    libcups2-dev                        \
    libfontconfig1-dev                  \
    libgstreamer1.0-dev                 \
    libgstreamer-plugins-base1.0-dev    \
    libgtk-3-dev                        \
    libkf5config-dev                    \
    libkf5coreaddons-dev                \
    libkf5i18n-dev                      \
    libkf5kio-dev                       \
    libkf5windowsystem-dev              \
    libkrb5-dev                         \
    libnss3-dev                         \
    libtool                 \
    libx11-dev                          \
    libxml2-utils                       \
    libxrandr-dev                       \
    libxslt1-dev                        \
    libxt-dev                           \
    ncurses-dev             \
    make                    \
    mercurial               \
    nasm                                \
    python3                             \
    python3-dev                         \
    qtbase5-dev                         \
    sudo                    \
    time                    \
    xsltproc                            \
    zip                                 \
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
