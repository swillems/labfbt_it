#!bash

if [[ $(conda env list | awk '{print $1}' ) = *"msqrob_parser"* ]]; then  
  git clone https://github.com/swillems/progenesis_histones_to_msqrob.git
  conda create -n msqrob_parser python=3.8 -c bioconda pyteomics ipykernel -y
else 
 echo "MsqRob already installed"
fi;
