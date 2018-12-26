#!/usr/bin/env bash

RUN_IN_PIPENV="pipenv run"

experiment () {
    export EXPERIMENT_ROOT=$PWD
    export PYTHONPATH=$PWD/src
    $RUN_IN_PIPENV jupyter lab
}

create_env () {
    export PIPENV_VENV_IN_PROJECT=1
    pipenv install --dev
}

create_folders() {
    if [ ! -d data ]
    then
        mkdir data
    fi
    if [ ! -d data/external ]
    then
        mkdir data/external
    fi
    if [ ! -d data/interim ]
    then
        mkdir data/interim
    fi
    if [ ! -d data/processed ]
    then
        mkdir data/processed
    fi
    if [ ! -d data/raw ]
    then
        mkdir data/raw
    fi
    if [ ! -d bin ]
    then
        mkdir bin
    fi
}

setup () {
    create_folders
    create_env
}

"$@"