#!/bin/bash
#Start with mamba create -n dfext-test-base jupyterlab=4.2 python=3.10
conda create -n df-test-active --force --yes --clone dfext-test-base
conda init bash
conda activate dfext-test-active
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ./nvm.sh
cd dfkernel
pip install -e .
python -m dfkernel install --sys-prefix
nvm install 16.12
nvm use 16.12
cd ../dfnotebook-extension
pip install -e .
jlpm clean
jlpm install
jlpm build
jupyter lab