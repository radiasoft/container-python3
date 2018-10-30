#!/bin/bash
build_fedora_base_image
build_is_public=1

build_as_root() {
    install_repo_eval redhat-base
    install_repo_eval code-base
}

build_as_run_user() {
    cd
    bivio_pyenv_2
    gem install --no-document fpm
    build_run_user_home_chmod_public
}
