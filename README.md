# What is This?

Running the [keras_experimental](https://github.com/avolkov1/keras_experiments) library is challenging as this library hasn't been updated in a while, making it incompatible with updates to TensorFlow and Keras.

This code will install a Python virtualenv where keras_experimental can run.

> This assumes you can use FredHutch lmod modules for Python, CUDA, and GCC

# Use

> These instructions are for release 1.3.

## Getting this Repository

Download and extract using `wget`:

    wget -O - https://github.com/FredHutch/plucky-penguin/archive/refs/tags/1.3.tar.gz | tar xzvf -

This creates a directory named "plucky-penguin-1.3" in the directory where you have run this command.  `cd` into this directory before running installation or setup steps

## Installation

The script `install.sh` in this repository will install a virtual environment in the current directory and add the necessary libraries to this virtual environment.  In the directory where you have downloaded, simply run:

```
./plucky-penguin-1.3/install.sh
```

When complete you will see a new directory `venv` containing the virtual environment.  This can now be actvated using the `setup_env.sh` command

## Use

Once installation is complete the virtualenv will have all the libraries needed.  In any scripts or each time you start a new shell where you wish to use keras_experimental make sure to load Python and CUDA and activate the environment.

The file `setup_env.sh` contains commands necessary to do this:

  - `cd` into the directory where you ran `install.sh`
  - run `. ./plucky-penguin-1.3/setup_env.sh` to configure the current shell


# Addenda

## Using Git

Use `git clone https://github.com/FredHutch/plucky-penguin.git` to clone the repository.  This will create a directory called "plucky-penguin" in the directory where you have run this command.  `cd` into the repository directory before running installation or setup steps

## Manual Installation

These are the steps the `install.sh` script runs.  It starts with loading a usable Python and having CUDA libraries available (specifically libcudart):

```
ml Python/3.8.6-GCCcore-10.2.0 CUDAcore/11.1.1-GCCcore-10.2.0
```

The next steps are to create a virtualenv environment and install TensorFlow, Keras, and some other libraries necessary for this particular project (numpy et alia) into this environment.  A `requirements.txt` file is provided with the necessary version pins.

```
virtualenv ./venv
. venv/bin/activate
pip install -r ./requirements.txt
```

> There may be other versions that work, but the TensorFlow and Keras versions indicated in that file are about the latest versions that seem to be compatible with keras_experimental

Last it's necessary to install keras_experimental.  Make sure the virtualenv is activated and run:

```
git clone https://github.com/avolkov1/keras_experiments.git
cd keras_experiments
pip install -e .
```

