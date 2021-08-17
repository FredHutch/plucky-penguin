import os
import argparse
import numpy as np
import pandas as pd
import tensorflow as tf
import keras.layers as L
from keras import backend as K
from keras.models import Model
from keras.callbacks import ModelCheckpoint, Callback
from keras.preprocessing import sequence
from keras.utils.data_utils import Sequence
from keras.regularizers import l2
from keras.constraints import non_neg, Constraint
#
#
from tensorflow.python.keras.utils.multi_gpu_utils import multi_gpu_model
from keras_exp.multigpu import get_available_gpus, make_parallel
from sklearn.metrics import roc_auc_score, average_precision_score, precision_recall_curve
import pdb

test = "Sample Python code"
print ("test: " + test)

import math

# GRADED FUNCTION: basic_sigmoid

def basic_sigmoid(x):
    """
    Compute sigmoid of x.

    Arguments:
    x -- A scalar

    Return:
    s -- sigmoid(x)
    """
    # (≈ 1 line of code)
    # s =
    # YOUR CODE STARTS HERE

    s=1/(1+math.exp(-x))

    # YOUR CODE ENDS HERE

    return s

print("basic_sigmoid(1) = " + str(basic_sigmoid(1)))

import numpy as np
t_x = np.array([1, 2, 3])
print(np.exp(t_x))
