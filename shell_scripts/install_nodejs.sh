#!/bin/bash

echo 'Installing nodejs-6.11.2'

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install nodejs 6.11.2
asdf global nodejs 6.11.2

echo 'Finishes installing nodejs-6.11.2'
