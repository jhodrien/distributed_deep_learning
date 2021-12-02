# Distributed deep learning

Examples of how to distribute deep learning on a High Performance Computer (HPC).

[Ray Train](https://docs.ray.io/en/latest/train/train.html) handles the distributed bit, and [TensorFlow](https://www.tensorflow.org/tutorials/distribute/multi_worker_with_keras) or [PyTorch](https://pytorch.org/tutorials/beginner/dist_overview.html) do the deep learning.  

Example scripts are for the HPCs of [ARC4](https://arcdocs.leeds.ac.uk/systems/arc4.html) (SGE), [JADE-2](http://docs.jade.ac.uk/en/latest/index.html) (SLURM), and [Bede](https://bede-documentation.readthedocs.io/en/latest/) (SLURM).  

## Contents

The Python environments for each HPC: [`install_python_environments.md`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/install_python_environments.md).  

Python script examples:
- TensorFlow
  - MNIST end-to-end: [`tensorflow_mnist_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/tensorflow_mnist_example.py).  
  - MNIST tuning: [`tensorflow_tune_mnist_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/tensorflow_tune_mnist_example.py).  
  - Train linear model with Ray Datasets: [`tensorflow_linear_dataset_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/tensorflow_linear_dataset_example.py).  
- PyTorch
  - Linear: [`pytorch_train_linear_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_train_linear_example.py`).  
  - Fashion MNIST: [`pytorch_train_fashion_mnist_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_train_fashion_mnist_example.py`).  
  - HuggingFace Transformer: [`pytorch_transformers_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_transformers_example.py`).  
  - Tune linear model with Ray Datasets: [`pytorch_tune_linear_dataset_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_tune_linear_dataset_example.py).  

Submit job to HPC (choose one and update the Python script within it):
- ARC4
  - CPU: [`ray_train_on_arc4_cpu.bash`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/ray_train_on_arc4_cpu.bash).  
  - GPU: [`ray_train_on_arc4_gpu.bash`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/ray_train_on_arc4_gpu.bash).  
- Bede
  - GPU: [`ray_train_on_bede.bash`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/ray_train_on_bede.bash).  

Interactive on HPC
  - [`jupyter_notebook_to_hpc.md`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/jupyter_notebook_to_hpc.md).  

