#!/bin/bash
build_fedora_base_image
build_travis_trigger_next=( beamsim-part1 )
build_is_public=1

build_as_root() {
    curl radia.run | bash -s redhat-base
}

build_as_run_user() {
    cd
    bivio_pyenv_2
}
