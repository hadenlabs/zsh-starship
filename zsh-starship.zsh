#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install starship for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
starship_package_name=starship
ZSH_STARSHIP_ROOT=$(dirname "${0}")
ZSH_STARSHIP_CONF_DIR="${ZSH_STARSHIP_ROOT}/config"
ZSH_HOME_CONF_DIR="${HOME}/.config"


function starship::dependences {
    message_info "Installing dependences for $starship_package_name"
    if ! type -p brew > /dev/null; then
        message_warning "it's neccesary install brew, please use 'antibody bundle luismayta/zsh-brew branch:develop'"
        return
    fi
    message_success "Installed dependences for $starship_package_name"
}

function starship::packages {
    message_info "Install packages for $starship_package_name"
    message_success "Installed packages for $starship_package_name"
}

function starship::install {
    starship::dependences
    message_info "Installing $starship_package_name"
    brew install starship
    message_success "Installed $starship_package_name"
}

function starship::post_install {
    message_info "Post Install $starship_package_name"
    starship::sync
    message_success "Success Install $starship_package_name"
}

function starship::sync {
    rsync -avzh --progress "${ZSH_STARSHIP_CONF_DIR}/" "${ZSH_HOME_CONF_DIR}/"
}


function starship::load {
    eval "$(starship init zsh)"
}

starship::load

if ! type -p starship > /dev/null; then
    starship::install
    starship::post_install
fi
