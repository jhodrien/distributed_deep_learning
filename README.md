# Distributed deep learning

Examples of how to distribute deep learning on a High Performance Computer (HPC).

[Ray Train](https://docs.ray.io/en/latest/train/train.html) handles the distributed bit, and [TensorFlow](https://www.tensorflow.org/tutorials/distribute/multi_worker_with_keras) or [PyTorch](https://pytorch.org/tutorials/beginner/dist_overview.html) do the deep learning. Example scripts are for the HPCs of ARC4 (SGE), JADE-2 (SLURM), and Bede (SLURM).  
The Python environment can be recreated using:  
```bash
conda env create --name distributed_dl --file=distributed_dl.yml
```

## Overview

HPCs often require multiple copies of the same program to be submitted to the cluster. This is well-suited for MPI (message-passing interface) workloads. Distributed Python libraries, like Ray and Dask, use a head-worker architecture with a single point of entry. The head node runs the script and manages the workers. Then the multiple worker nodes are spawned either manually or automatically to do the processing. This makes many small jobs, which is not ideal for HPCs.

Overcome with Ray Train
Dask Job


