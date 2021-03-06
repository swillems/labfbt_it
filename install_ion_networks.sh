#!bash

if ! hash ion_networks.py 2>/dev/null; then
  echo "Downloading latest ion-networks repository from GitHub."
  git clone https://github.com/swillems/ion_networks.git
  echo "Installing ion-networks."
  conda env create --file ion_networks/install/environment.yml
  echo "Adding ion-networks.py alias to ~/.bashrc."
  conda activate ion_networks
  ion_networks_command="$(which python)"
  conda deactivate
  echo "alias ion_networks.py='"${ion_networks_command}" "$(pwd)"/ion_networks/src/ion_networks.py'" >> ~/.bashrc
else
  echo "Ion-networks are already installed."
  echo "Update with command 'bash ion_networks/install/update.sh'."
fi
