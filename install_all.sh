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

cd software
wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_ion_networks.sh
bash install_ion_networks.sh
source ~/.bashrc
rm install_ion_networks.sh
cd ..

