#!/bin/bash -e

echo "Installing LAMMPS..."
git clone -b "stable_29Sep2021_update2" --depth 1 "https://github.com/lammps/lammps.git"
git clone https://github.com/mir-group/pair_nequip
cd pair_nequip && ./patch_lammps.sh ../lammps/
cd ..
cd lammps && mkdir -p build && cd build && cmake ../cmake -DCMAKE_PREFIX_PATH=$(python3 -c 'import torch;print(torch.utils.cmake_prefix_path)') -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-11.7/ && make

#EOF
