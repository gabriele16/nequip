#!/bin/bash -e

# author: Ole Schuett, Modified by Gabriele Tocci

echo "Installing Ubuntu packages..."

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

apt-get update -qq

apt-get install -qq --no-install-recommends \
  autoconf \
  autogen \
  automake \
  autotools-dev \
  bzip2 \
  ca-certificates \
  g++ \
  gcc \
  gfortran \
  git \
  less \
  libtool \
  libtool-bin \
  make \
  cmake \
  nano \
  patch \
  pkg-config \
  python3 \
  unzip \
  wget \
  xxd \
  zlib1g-dev \
  openmpi-bin \
  python3-pip \
  python-is-python3

rm -rf /var/lib/apt/lists/*
echo "Installing pytorch..."
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu117
echo "Installing mkl..."
pip install mkl mkl-include
echo "Installing LAMMPS..."
git clone -b "stable_29Sep2021_update2" --depth 1 "https://github.com/lammps/lammps.git"
git clone https://github.com/mir-group/pair_nequip
cd pair_nequip && ./patch_lammps.sh ../lammps/
cd ..

#cd lammps && mkdir -p build && cd build && cmake ../cmake -DCMAKE_PREFIX_PATH=`python -c 'import torch;print(torch.utils.cmake_prefix_path)'`  -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-11.7/ && make

#CMD ["/bin/bash"]


#EOF
