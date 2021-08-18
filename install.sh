#!/bin/bash
#
# Install tools to allow run of keras_experiments
#
set -ex

# Load necessary modules
ml Python/3.7.4-GCCcore-8.3.0 CUDA/10.2.89-GCC-8.3.0

# Create virtualenv for this work

virtualenv ./venv

# Activate and add requirements
. venv/bin/activate
pip install -r ./requirements.txt

# Install keras_experiments from github (we 
# could also use a git source in `pip install`)
git clone https://github.com/avolkov1/keras_experiments.git
pushd keras_experiments
pip install -e .
popd
