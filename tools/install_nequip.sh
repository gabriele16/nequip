#!/bin/bash -e

echo "Installing wandb"
pip3 install wandb
echo "Installing mkl..."
pip3 install mkl mkl-include
echo "Installing nequip"
cd ..
pip3 install .

