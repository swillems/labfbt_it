# MS-based computational proteomics @ LabFbt, UGhent

MS-based computational proteomic tools include:

* MS2PIP
* Ion-networks
* Percolator
* Elude
* MsqRob Progenesis parse

## Installation

On Windows 10, perform the following steps...

### WSL

Windows users need to install a Windows Subsystem for Linux (WSL) with Ubuntu 18.04 by following [these steps](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Launch the WSL and create a user account with user password. Close the WSL

### MobaXTerm

Download and install [MobaXterm v11.1](https://mobaxterm.mobatek.net/download-home-edition.html) (the installer edition, not the portable edition.

### Linux

Open the MobaXTerm and double click the WSL icon on the left. Copy-paste the following command

```bash
wget https://raw.githubusercontent.com/swillems/labfbt_it/master/install_all.sh && bash install_all.sh && rm install_all.sh && source ~/.bashrc
```

## Usage
