#!/usr/bin/env bash

RUN_IN_PIPENV="pipenv run"

experiment () {
    export PYTHONPATH=src
    $RUN_IN_PIPENV jupyter notebook --notebook-dir=notebooks
}

create_env () {
    export PIPENV_VENV_IN_PROJECT=1
    pipenv install --dev
}

setup () {
    create_env
}

"$@"