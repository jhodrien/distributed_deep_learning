#!/bin/bash -l
#$ -cwd -V
#$ -l h_rt=00:10:00
#$ -pe ib 4
#$ -l h_vmem=12G

conda activate distributed_dl

#python tensorflow_mnist_example.py --num-workers 4
#python tensorflow_linear_dataset_example.py --num-workers 4
python tensorflow_tune_mnist_example.py --num-workers 4




