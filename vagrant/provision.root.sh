#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  apt-get  update

export DEBIAN_FRONTEND=noninteractive
sudo  -E  apt-get  upgrade -y

sudo  apt-get  install -y   \
    ant                                 \
    ant-optional                        \
    autoconf                            \
    automake                            \
    bison                               \
    build-essential                     \
    ccache                              \
    clang                               \
    cmake                               \
    default-jdk                         \
    doxygen                             \
    emacs                               \
    fcitx                               \
    fcitx-mozc                          \
    flex                                \
    g++                                 \
    g++-12                              \
    gcc                                 \
    gcc-12                              \
    git                                 \
    gperf                               \
    graphviz                            \
    ibus-mozc                           \
    junit4                              \
    language-pack-ja                    \
    language-pack-ja-base               \
    libavahi-client-dev                 \
    libcppunit-dev                      \
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
    libqt5x11extras5-dev                \
    libtool                             \
    libx11-dev                          \
    libxml2-utils                       \
    libxrandr-dev                       \
    libxslt1-dev                        \
    libxt-dev                           \
    make                                \
    mercurial                           \
    nasm                                \
    ncurses-dev                         \
    openjdk-17-jdk                      \
    python3                             \
    python3-dev                         \
    qtbase5-dev                         \
    sudo                                \
    systemd-timesyncd                   \
    time                                \
    xsltproc                            \
    zip                                 \
                                        \
    language-pack-ja-base               \
    language-pack-ja                    \
    fcitx                               \
    fcitx-mozc                          \
    ibus-mozc                           \
    ;

sudo  apt-get  install -y  ubuntu-desktop
sudo  apt-get  install -y  qemu

sudo  update-alternatives --install             \
    /usr/bin/gcc gcc /usr/bin/gcc-12 60         \
    --slave /usr/bin/g++ g++ /usr/bin/g++-12    \
    ;

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
