#!bash

echo "Adding conda_notebooks alias to ~/.bashrc."
conda create -n conda_jupyter_notebook_kernels jupyter nb_conda_kernels -y
echo "alias conda_notebooks='conda activate conda_jupyter_notebook_kernels && jupyter notebook && conda deactivate'" >> ~/.bashrc

conda create -n sandbox ipykernel -y 