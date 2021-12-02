# Install Python environments

## ARC4
Instructions [here](https://arcdocs.leeds.ac.uk/software/compilers/anaconda.html).

### Miniconda installer
```bash
# download miniconda (x86_64 for ARC4)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# run miniconda, read terms, and set path
. Miniconda3-latest-Linux-x86_64.sh
```

### Conda environment

```bash
conda create --name distributed_dl --file spec-file_ARC4.txt

# or


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
conda activate pytorch
 
# create an environment for tensorflow
conda create -n tf tensorflow
conda activate tf
  
# then whenever you submit a job to the HPC, activate the environment you want
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

