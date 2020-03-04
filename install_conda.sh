#!bash

if ! hash conda 2>/dev/null; then
  echo "Installing Conda"
  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  bash Miniconda3-latest-Linux-x86_64.sh -b -p ~/.miniconda3
  eval "$(~/.miniconda3/bin/conda shell.bash hook)"
  conda update -n root conda -y
  conda init
  conda config --set auto_activate_base false
  rm Miniconda3-latest-Linux-x86_64.sh
else
  echo "Conda is already installed."
fi
