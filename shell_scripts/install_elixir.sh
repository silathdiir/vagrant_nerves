#!/bin/bash

echo 'Installing elixir-1.6.6'

asdf plugin-add elixir
asdf install elixir 1.6.6
asdf global elixir 1.6.6

echo 'Finishes installing elixir-1.6.6'
