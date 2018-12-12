#!/bin/bash
build_fedora_base_image
build_is_public=1

build_as_root() {
    install_repo_eval redhat-base
}

build_as_run_user() {
    cd
    bivio_pyenv_2
}
