#!/bin/bash
#
# Install tools to allow run of keras_experiments
#
set -ex

# Load necessary modules
ml Python/3.8.6-GCCcore-10.2.0 CUDAcore/11.1.1-GCCcore-10.2.0

# Create virtualenv for this work

virtualenv ./venv

# Activate and add requirements
. venv/bin/activate
pip install -r ./requirements

# Install keras_experiments from github (we 
# could also use a git source in `pip install`)
git clone https://github.com/avolkov1/keras_experiments.git
pushd keras_experiments
pip install -e .
popd
