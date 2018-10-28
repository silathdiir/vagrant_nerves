#!/bin/bash

echo 'Installing nerves'

mix local.hex --force
mix local.rebar --force
mix archive.install hex nerves_bootstrap --force

echo 'Finishes installing nerves'
