#!/bin/bash

echo 'Installing fwup'

if command -v fwup >/dev/null 2>&1; then
  echo 'fwup has already been installed before.'
else
  wget -q -c --show-progress https://github.com/fhunleth/fwup/releases/download/v1.2.6/fwup_1.2.6_amd64.deb
  dpkg -i fwup_1.2.6_amd64.deb
  rm fwup_1.2.6_amd64.deb
  echo 'Finishes installing fwup'
fi
