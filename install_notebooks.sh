#!bash

if [[ $(conda env list | awk '{print $1}' ) != *"conda_jupyter_notebook_kernels"* ]]; then  
  echo "Installing notebooks"
  conda create -n conda_jupyter_notebook_kernels jupyter nb_conda_kernels -y
  echo "alias conda_notebooks='conda activate conda_jupyter_notebook_kernels && jupyter notebook && conda deactivate'" >> ~/.bashrc
else 
 echo "Notebooks already installed"
fi;

if [[ $(conda env list | awk '{print $1}' ) != *"sandbox"* ]]; then  
  echo "Installing sandbox"
  conda create -n sandbox ipykernel -y 
else 
 echo "Sandbox already installed"
fi;
