#!bash

if ! hash percolator 2>/dev/null; then
  mkdir percolator
  wget --output-document percolator/percolator_3_02_01_ubuntu.tar.gz https://github.com/percolator/percolator/releases/download/rel-3-02-01/ubuntu64.tar.gz
  tar xzvf percolator/percolator_3_02_01_ubuntu.tar.gz -C percolator
  sudo dpkg -i percolator/elude-v3-02-linux-amd64.deb
  sudo dpkg -i percolator/percolator-v3-02-linux-amd64.deb
  rm -r percolator
else
  echo "Percolator is already installed."
fi