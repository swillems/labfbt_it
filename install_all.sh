#!bash

mkdir software
mkdir sandbox

cd sandbox

if ! hash cmd_get 2>/dev/null; then
  echo "alias cmd_get='echo Get a coffee for Maarten'" >> ~/.bashrc
fi

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_conda.sh
bash install_conda.sh
exec bash
rm install_conda.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_notebooks.sh
bash install_notebooks.sh
exec bash
rm install_notebooks.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_ms2pip.sh
bash install_ms2pip.sh
exec bash
rm install_ms2pip.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_percolator.sh
bash install_percolator.sh
exec bash
rm install_percolator.sh

cd ../software

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_ion_networks.sh
bash install_ion_networks.sh
exec bash
rm install_ion_networks.sh

wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_msqrob_parser.sh
bash install_msqrob_parser.sh
exec bash
rm install_msqrob_parser.sh

cd ..
