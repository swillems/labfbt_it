#!bash

if [[ $(conda env list | awk '{print $1}' ) = *"deeplc"* ]]; then  
 conda create -n deeplc python=3.6.4 ipykernel -y
 conda activate deeplc
 pip install deeplc
 conda deactivate
else 
 echo "DeepLC already installed"
fi;
