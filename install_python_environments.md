# Install Python environments

Instructions to have your own local miniconda and the Python environments for each HPC. There are many alternatives too.  

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
# clone - tensorflow (2.7.0) and ray
conda create --name tf_ray_arc4 --file tf_ray_arc4.txt

# clone - pytorch (1.10) and ray
conda create --name pytorch_ray_arc4 --file pytorch_ray_arc4.txt
```
# or

# create new - tensorflow (2.7.0) and ray
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
# create an environment for pytorch
conda create -n pytorch -c pytorch pytorch torchvision cudatoolkit=10.2
 
# create an environment for tensorflow
conda create -n tf tensorflow
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

