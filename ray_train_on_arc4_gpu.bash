#!/bin/bash -l
#$ -cwd -V
#$ -l h_rt=00:01:00
#$ -l coproc_v100=1

# ----------

# 1. activate the appropriate conda environment
conda activate tf_ray_arc4
# conda activate pytorch_ray_arc4

# 2. append the path for the conda environment, so it can find cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib

# ----------

# 3. run the python script

# python test_if_gpu_available_tf.py
# python test_if_gpu_available_pytorch.py

# python tensorflow_mnist_example.py --num-workers 4
# python tensorflow_linear_dataset_example.py --num-workers 4
# python tensorflow_tune_mnist_example.py --num-workers 4


