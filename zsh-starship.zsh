#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install starship for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
starship_package_name=starship

function starship::dependences {
    message_info "Installing dependences for $starship_package_name"
    message_success "Installed dependences for $starship_package_name"
}

function starship::packages {
    message_info "Install packages for $starship_package_name"
    message_success "Installed packages for $starship_package_name"
}

function starship::install {
    starship::dependences
    message_info "Installing $starship_package_name"
    curl -fsSL https://starship.rs/install.sh | bash
    message_success "Installed $starship_package_name"
}

function starship::post_install {
    message_info "Post Install $starship_package_name"
    message_success "Success Install $starship_package_name"
}

function starship::load {
    eval "$(starship init zsh)"
}

starship::load

if ! type -p starship > /dev/null; then
    starship::install
    starship::post_install
fi
