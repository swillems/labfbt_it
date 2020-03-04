 #!bash

conda create -n ms2pip python=3.6.4 -y ipykernel
conda activate ms2pip
pip install ms2pip
conda deactivate
