#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function starship::internal::load {
    if type -p starship > /dev/null; then
        eval "$(starship init zsh)"
    fi
}

function starship::internal::starship::install {
    message_info "Installing ${STARSHIP_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${STARSHIP_MESSAGE_BREW}"
        return
    fi
    brew install starship
    message_success "Installed ${STARSHIP_PACKAGE_NAME}"
}

function starship::internal::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "${STARSHIP_MESSAGE_BREW}"
        return
    fi
    message_info "Installing rsync for ${STARSHIP_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${STARSHIP_PACKAGE_NAME}"
}
