#!bash

mkdir percolator
wget --output-document percolator/percolator_3_02_01_ubuntu.tar.gz https://github.com/percolator/percolator/releases/download/rel-3-02-01/ubuntu64.tar.gz
tar xzvf percolator/percolator_3_02_01_ubuntu.tar.gz -C percolator

if ! hash percolator 2>/dev/null; then
  echo "Installing percolator"
  sudo dpkg -i percolator/percolator-v3-02-linux-amd64.deb
else
  echo "Percolator is already installed."
fi

if ! hash elude 2>/dev/null; then
  echo "Installing elude"
  sudo apt update && sudo apt upgrade && libgomp1
  sudo dpkg -i percolator/elude-v3-02-linux-amd64.deb
else
  echo "Elude is already installed."
fi

rm -r percolator
