#!/bin/sh

_gem_cmd="$HOMEBREW_PREFIX/opt/ruby@3.4/bin/gem"

$_gem_cmd install cocoapods cocoapods-art

unset _gem_cmd
