#!/bin/bash
build_fedora_base_image
build_travis_trigger_next=( beamsim-part1 )

build_as_run_user() {
    if [[ $build_is_vagrant ]]; then
        build_sudo rpm --import https://yum.dockerproject.org/gpg
        build_sudo cp docker.repo /etc/yum.repos.d/docker.repo
        build_yum install docker-engine
        build_sudo usermod -a -G docker vagrant
        build_sudo systemctl enable docker.service
    fi
    cd
    bivio_pyenv_2
}
