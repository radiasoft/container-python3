#!/bin/bash
build_fedora_base_image
build_travis_trigger_next=( beamsim-part1 )

build_as_run_user() {
    cd
    curl radia.run | bash -s redhat-base
    bivio_pyenv_2
}
