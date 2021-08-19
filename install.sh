#!/bin/bash
#
# Install tools to allow run of keras_experiments
#
set -ex
INSTROOT=$(dirname $0)

# Load necessary modules
ml Python/3.7.4-GCCcore-8.3.0 CUDA/10.2.89-GCC-8.3.0

# Create virtualenv for this work

virtualenv ./venv

# Activate and add requirements
. venv/bin/activate
pip install -r ${INSTROOT}/requirements.txt

# Install keras_experiments from github (we 
# could also use a git source in `pip install`)
if [ -d ${INSTROOT}/keras_experiments && -f ${INSTROOT}/keras_experiments/.git ]
then
  pushd ${INSTROOT}/keras_experiments
  git pull
  popd
else
  rm -rf ${INSTROOT}/keras_experiments
  git clone https://github.com/avolkov1/keras_experiments.git ${INSTROOT}/keras_experiments
fi
pushd ${INSTROOT}/keras_experiments
pip install -e .
popd
