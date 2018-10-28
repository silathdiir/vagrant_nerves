#!/bin/bash

echo 'Installing packages via apt'

dpkg --add-architecture i386
apt-get -q update
apt-get purge -q -y snapd lxcfs lxd ubuntu-core-launcher snap-confine
apt-get -q -y install \
  autoconf \
  automake \
  bc \
  build-essential \
  bzr \
  cvs \
  libc6:i386 \
  git \
  libncurses5-dev \
  mercurial \
  qtbase5-dev \
  qt5-default \
  qtmultimedia5-dev \
  qtwebengine5-dev \
  squashfs-tools \
  ssh-askpass \
  subversion \
  unzip \
  vim
apt-get -q -y autoremove
apt-get -q -y clean
update-locale LC_ALL=C

echo 'Finishes installing via apt'
