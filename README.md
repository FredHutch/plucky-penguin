# What is This?

Running the keras_experimental library is challenging as this library hasn't been updated in a while, making it incompatible with updates to TensorFlow and Keras.

These bits will install a Python virtualenv where keras_experimental can run.  Assumes you can use FredHutch lmod modules for Python, CUDA, and GCC

# Use

## Installation

Installation starts with loading a usable Python and having CUDA libraries available (specifically libcudart):

```
ml Python/3.8.6-GCCcore-10.2.0 CUDAcore/11.1.1-GCCcore-10.2.0
```

The next steps are to create a virtualenv environment and install TensorFlow, Keras, and some other libraries necessary for this particular project (numpy et alia) into this environment.  A `requirements.txt` file is provided with the necessary version pins.

```
virtualenv ./venv
. venv/bin/activate
pip install -r ./requirements.txt
```

There may be other versions that work, but the TensorFlow and Keras versions indicated in that file are about the latest versions that are compatible with keras_experimental

Last it's necessary to install keras_experimental.  Make sure the virtualenv is activated and run:

```
git clone https://github.com/avolkov1/keras_experiments.git
cd keras_experiments
pip install -e .
```

The script `install.sh` runs all of these steps for you.

## Use

Once installation is complete the virtualenv will have all the libraries needed.  In any scripts or each time you start a new shell where you wish to use keras_experimental make sure to load Python and CUDA and activate the environment.

The file `setup_env.sh` contains commands necessary to do this- use the command `. ./setup_env.sh` to configure the current shell.
