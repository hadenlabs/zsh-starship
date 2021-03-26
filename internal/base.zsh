#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function starship::internal::load {
    if core::exists starship; then
        eval "$(starship init zsh)"
    fi
}
