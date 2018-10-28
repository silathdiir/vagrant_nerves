#!/bin/bash

# For US
# ARCHIVE_URL="https://github.com/erlang/otp/archive/OTP-21.0.9.tar.gz"

# For CN
ARCHIVE_URL="https://mirrors.tuna.tsinghua.edu.cn/pkgsrc/distfiles/erlang/OTP-21.0.9.tar.gz"

echo 'Installing erlang-21.0.9'

asdf plugin-add erlang
mkdir -p ~/.asdf/plugins/erlang/kerl-home/archives/

echo 'Downloading OTP-21.0.9.tar.gz'

if [ -f ~/.asdf/plugins/erlang/kerl-home/archives/OTP-21.0.9.tar.gz ]; then
  echo 'OTP-21.0.9.tar.gz has already been downloaded before.'
else
  wget -q -c --show-progress "${ARCHIVE_URL}" \
    -O ~/.asdf/plugins/erlang/kerl-home/archives/OTP-21.0.9.tar.gz

  echo 'Finishes downloading OTP-21.0.9.tar.gz'
fi

asdf install erlang 21.0.9
asdf global erlang 21.0.9

echo 'Finishes installing erlang-21.0.9'
