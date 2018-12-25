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

setup () {
    create_env
}

"$@"