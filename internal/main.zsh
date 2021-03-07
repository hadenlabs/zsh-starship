#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function starship::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_STARSHIP_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_STARSHIP_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_STARSHIP_PATH}"/internal/linux.zsh
      ;;
    esac
}

starship::internal::main::factory

if ! type -p rsync > /dev/null; then starship::internal::rync::install; fi
if ! type -p starship > /dev/null; then starship::internal::starship::install; fi

starship::internal::load
