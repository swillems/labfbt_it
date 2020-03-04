 #!bash

if [[ $(conda env list | awk '{print $1}' ) = *"ms2pip"* ]]; then  
 conda create -n ms2pip python=3.6.4 ipykernel -y
 conda activate ms2pip
 pip install ms2pip
 conda deactivate
else 
 echo "MS2PIP already installed"
fi;
