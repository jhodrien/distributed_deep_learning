# Jupyter Notebooks on HPC

Jupyter Notebooks are great for interactive data science.





[Interactive Jupyter/Dask on HPC](https://pangeo.io/setup_guides/hpc.html)
See the excellent [video](https://www.youtube.com/embed/FXsgmwpRExM) from Dask creator, Matthew Rocklin, below.
- Create or edit the [`~/.config/dask/jobqueue.yaml`](https://github.com/lukeconibear/swd6_hpp/blob/main/docs/jobqueue.yaml) file within this repository.
- Check the [`~/.config/dask/distributed.yaml`](https://github.com/lukeconibear/swd6_hpp/blob/main/docs/distributed.yaml) file with this repository.


```bash
# in a terminal

# log onto arc4
ssh ${USER}@arc4.leeds.ac.uk

# start an interactive session on a compute node on arc4
qlogin -l h_rt=04:00:00 -l h_vmem=12G

# activate your python environment
conda activate my_python_environment

# echo back the ssh command to connect to this compute node
echo "ssh -N -L 2222:`hostname`:2222 -L 2727:`hostname`:2727 ${USER}@arc4.leeds.ac.uk"

# launch a jupyter lab session on this compute node
jupyter lab --no-browser --ip=`hostname` --port=2222
```
___
```bash
# in a local terminal
# ssh into the compute node
ssh -N -L 2222:`hostname`:2222 -L 2727:`hostname`:2727 ${USER}@arc4.leeds.ac.uk
```
___
```bash
# open up a local browser (e.g. chrome)
# go to the jupyter lab session by pasting into the url bar
localhost:2222
    
# can also load the dask dashboard in the browser at localhost:2727
```
___
```python
# now the jupyter code
from dask_jobqueue import SGECluster
from dask.distributed import Client

cluster = Client(
    walltime='01:00:00',
    memory='4 G',
    resource_spec='h_vmem=4G',
    scheduler_options={
        'dashboard_address': ':2727',
    },
)

client = Client(cluster)

cluster.scale(jobs=20)
# cluster.adapt(minimum=0, maximum=20)

client.close()
cluster.close()
```
