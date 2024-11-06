#!/usr/bin/env bash
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh -b -p opt/conda
source opt/conda/bin/activate
conda create -y -n dev
conda activate dev
conda install -y --channel https://roq-trading.com/conda/unstable roq-python
conda install -y notebook pandas matplotlib
echo "jupyter notebook"
