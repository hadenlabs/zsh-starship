#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install starship for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_STARSHIP_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_STARSHIP_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_STARSHIP_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_STARSHIP_PATH}"/pkg/main.zsh
