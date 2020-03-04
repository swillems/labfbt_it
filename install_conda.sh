#!bash

if ! hash conda 2>/dev/null; then
  echo "Conda not found."
  echo "Downloading conda."
  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  echo "Installing conda."
  bash Miniconda3-latest-Linux-x86_64.sh -b -p ~/miniconda3
  echo "Updating conda."
  eval "$(~/miniconda3/bin/conda shell.bash hook)"
  # echo "Downloading conda."
  # wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
  # echo "Installing conda."
  # bash Anaconda3-2019.10-Linux-x86_64.sh -b -p ~/anaconda3
  # echo "Updating conda."
  # eval "$(~/anaconda3/bin/conda bash hook)"
  conda update -n root conda -y
  echo "Initializing conda."
  conda init
  conda config --set auto_activate_base false
  echo "Installing conda notebook kernels."
  conda install -n root -c conda-forge nb_conda_kernels ipykernel -y
  echo "Adding conda_notebooks alias to ~/.bashrc."
  echo "alias conda_notebooks='conda activate && jupyter notebook && conda deactivate'" >> ~/.bashrc
  # export conda_notebooks='conda activate && jupyter notebook && conda deactivate'
  echo "Cleaning up conda installation."
  source ~/.bashrc
  rm Miniconda3-latest-Linux-x86_64.sh
else
  echo "Conda is already installed."
fi
