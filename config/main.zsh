#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_STARSHIP_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_STARSHIP_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_STARSHIP_PATH}"/config/linux.zsh
      ;;
    esac
}

config::main::factory