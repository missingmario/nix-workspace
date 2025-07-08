#!/bin/sh

brew cleanup
mise cache clean

sudo -i nix-collect-garbage -d
