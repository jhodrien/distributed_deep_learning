# Install Python environments

Instructions to have your own local miniconda and the Python environments for each HPC.  
There are many other alternatives too.  

## ARC4

### Miniconda installer
```bash
# download miniconda (x86_64 for ARC4)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# run miniconda, read terms, and set path
. Miniconda3-latest-Linux-x86_64.sh
```

### Conda environment

```bash
# clone - tensorflow 2.7.0 and ray
conda env create --file tf_ray_arc4.yml

# clone - pytorch 1.10 and ray
conda env create --file pytorch_ray_arc4.yml

# or

# create new - tensorflow 2.7.0 and ray
conda create -n tf_ray_arc4 -c conda-forge python==3.9.* cudatoolkit==11.2.* cudnn==8.1.*
conda activate tf_ray_arc4
pip install -U pip
pip install tensorflow==2.7.0
pip install -U ray
pip install -U ray[tune]

# create new - pytorch (1.10) and ray
conda create -n pytorch_ray_arc4 pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
conda activate pytorch_ray_arc4
pip install -U ray
pip install -U ray[tune]

# create new - jax
conda create -n jax python=3.8 cudatoolkit=11.2 cudatoolkit-dev=11.2 cudnn=8.2
conda activate jax
pip install -U jax
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_releases.html

```

## Bede

### Miniconda installer
```bash
# Replace <project> with your project code
export DIR=/nobackup/projects/<project>/$USER

# download miniconda (ppc64le for Bede's hardware, not x86_64 as for ARC4)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-ppc64le.sh
 
# run miniconda
sh Miniconda3-latest-Linux-ppc64le.sh -b -p $DIR/miniconda
source miniconda/bin/activate
 
# update conda and set channels
conda update conda -y
conda config --prepend channels conda-forge
conda config --prepend channels https://public.dhe.ibm.com/ibmdl/export/pub/software/server/ibm-ai/conda/
conda config --prepend channels https://opence.mit.edu
```

### Conda environment

```bash
# clone - tensorflow 2.7.0 and ray
conda env create --file tf_bede.yml

# clone - pytorch 1.10 and ray
conda env create --file pytorch_bede.yml

# clone - pytorch 1.9.0, cuda 10.2, and pytorch_geometric 2.0.3
conda env create --file pytorch_geometric_bede.yml

# or

# create an environment for pytorch
conda create -n pytorch -c pytorch pytorch torchvision cudatoolkit=10.2
 
# create an environment for tensorflow
conda create -n tf tensorflow

# create an environment for pytorch geometric
module load gcc
conda create -n pytorch_geometric -c pytorch pytorch cudatoolkit=10.2
conda activate pytorch_geometric
# check the pytorch version, this happened to be 1.9.0
# if different, update the URLs below
pip install torch-scatter -f https://data.pyg.org/whl/torch-1.9.0+cu102.html
pip install torch-sparse -f https://data.pyg.org/whl/torch-1.9.0+cu102.html
pip install torch-geometric
```

## JADE-2

### Miniconda installer

```bash
...
```

### Conda environment

```bash
...
```

