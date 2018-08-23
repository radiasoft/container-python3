#!/bin/bash
build_fedora_base_image
build_travis_trigger_next=( beamsim-part1 )
build_is_public=1

build_as_root() {
    install_repo_eval redhat-base
    install_repo_eval code-base
}

build_as_run_user() {
    cd
    bivio_pyenv_2
    gem install --no-document fpm
}
