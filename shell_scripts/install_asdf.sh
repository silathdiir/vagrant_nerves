#!/bin/bash

echo 'Installing asdf'

if [ -f ~/.asdf/bin/asdf ]; then
  echo 'asdf has already been installed before.'
else
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile

  echo 'Finishes installing asdf'
fi
