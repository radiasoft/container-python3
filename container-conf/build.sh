#!/bin/bash
build_image_base=radiasoft/fedora
build_is_public=1

build_as_run_user() {
    umask 022
    # bivio_pyenv_3
    _bivio_pyenv_global_version='3.10.2'  _bivio_pyenv_install
    _bivio_pyenv_version_do 3.10.2 py3

}
