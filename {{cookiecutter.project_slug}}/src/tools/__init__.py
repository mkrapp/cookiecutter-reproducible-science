import os
from os.path import join

EXPERIMENT_ROOT = os.getenv('EXPERIMENT_ROOT')


def get_file(file):
    return join(EXPERIMENT_ROOT, file)


def get_data_file(source, file):
    return join(EXPERIMENT_ROOT, 'data', source, file)


def get_bin_file(file):
    return join(EXPERIMENT_ROOT, 'bin', file)
