#!/bin/bash
build_image_base=radiasoft/fedora
build_is_public=1

build_as_run_user() {
    install_repo_eval pyenv
}
