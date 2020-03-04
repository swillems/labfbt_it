#!bash

if ! hash conda 2>/dev/null; then
  echo "Conda not found."
  echo "Downloading conda."
  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  echo "Installing conda."
  bash Miniconda3-latest-Linux-x86_64.sh -b -p ~/.miniconda3
  echo "Updating conda."
  eval "$(~/.miniconda3/bin/conda shell.bash hook)"
  conda update -n root conda -y
  echo "Initializing conda."
  conda init
  conda config --set auto_activate_base false
  echo "Installing conda notebook kernels."
  echo "alias cmd_get='echo Get a coffee for Maarten'" >> ~/.bashrc
  echo "Cleaning up conda installation."
  rm Miniconda3-latest-Linux-x86_64.sh
else
  echo "Conda is already installed."
fi
