# Distributed deep learning

Examples of how to distribute deep learning on a High Performance Computer (HPC).

## Contents

These examples use [Ray Train](https://docs.ray.io/en/latest/train/train.html) in a static job on a HPC. Ray handles most of the complexity of distributing the work, with minimal changes to your [TensorFlow](https://www.tensorflow.org/tutorials/distribute/multi_worker_with_keras) or [PyTorch](https://pytorch.org/tutorials/beginner/dist_overview.html) code.

First, install the Python environments for the required HPC: [`install_python_environments.md`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/install_python_environments.md).  

- Python script examples:
  - TensorFlow
    - MNIST end-to-end: [`tensorflow_mnist_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/tensorflow_mnist_example.py).  
    - MNIST tuning: [`tensorflow_tune_mnist_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/tensorflow_tune_mnist_example.py).  
    - Train linear model with Ray Datasets: [`tensorflow_linear_dataset_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/tensorflow_linear_dataset_example.py).  
  - PyTorch
    - Linear: [`pytorch_train_linear_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_train_linear_example.py).  
    - Fashion MNIST: [`pytorch_train_fashion_mnist_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_train_fashion_mnist_example.py).  
    - HuggingFace Transformer: [`pytorch_transformers_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_transformers_example.py).  
    - Tune linear model with Ray Datasets: [`pytorch_tune_linear_dataset_example.py`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/pytorch_tune_linear_dataset_example.py).  
- Then submit the job to HPC (choose one and update the Python script within it):
  - [ARC4](https://arcdocs.leeds.ac.uk/systems/arc4.html) (SGE)  
    - CPU: [`ray_train_on_arc4_cpu.bash`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/ray_train_on_arc4_cpu.bash).  
    - GPU: [`ray_train_on_arc4_gpu.bash`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/ray_train_on_arc4_gpu.bash).  
  - [Bede](https://bede-documentation.readthedocs.io/en/latest/) (SLURM)
    - GPU: [`ray_train_on_bede.bash`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/ray_train_on_bede.bash).  
  - [JADE-2](http://docs.jade.ac.uk/en/latest/index.html) (SLURM)
    - GPU: ...

It's preferable to use a static job on the HPC. To do this, you could test out different ideas locally in a Jupyter Notebook, then when ready convert this to an executable script (`.py`) and move it over. However, it is also possible to use Jupyter Notebooks interactively on the HPC following the instructions here: [`jupyter_notebook_to_hpc.md`](https://github.com/lukeconibear/distributed_deep_learning/blob/main/jupyter_notebook_to_hpc.md).  

