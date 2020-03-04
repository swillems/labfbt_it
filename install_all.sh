#!bash

sudo -i
sudo apt update && sudo apt upgrade

mkdir software
mkdir sandbox

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_conda.sh
bash install_conda.sh
source ~/.bashrc
rm install_conda.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_notebooks.sh
bash install_notebooks.sh
source ~/.bashrc
rm install_notebooks.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_ms2pip.sh
bash install_ms2pip.sh
source ~/.bashrc
rm install_ms2pip.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_deeplc.sh
bash install_deeplc.sh
source ~/.bashrc
rm install_deeplc.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_percolator.sh
bash install_percolator.sh
source ~/.bashrc
rm install_percolator.sh

cd software

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_ion_networks.sh
bash install_ion_networks.sh
source ~/.bashrc
rm install_ion_networks.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_msqrob_parser.sh
bash install_msqrob_parser.sh
source ~/.bashrc
rm install_msqrob_parser.sh

cd ..

