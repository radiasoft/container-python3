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
    # This line stops a warning from the pyenv installer
    bivio_path_insert ~/.pyenv/bin 1
    . ~/.bashrc
    local v=2.7.12
    bivio_pyenv_global "$v"
    . ~/.bashrc
    rm requirements.txt
    pip install --upgrade pip
    pip install --upgrade setuptools==32.1.3 tox
    local e=py2
    pyenv virtualenv "$v" "$e"
    pyenv global "$e"
}
