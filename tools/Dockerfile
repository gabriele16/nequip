FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04

# author: Gabriele Tocci

# Setup CUDA environment.
ENV CUDA_PATH /usr/local/cuda-11.7/
ENV LD_LIBRARY_PATH /usr/local/cuda-11.7/

WORKDIR /opt/nequip

COPY . ./
RUN ls -lrth
RUN cd tools && chmod +x ./install_requirements.sh && ./install_requirements.sh
RUN cd tools && chmod +x ./install_nequip.sh && ./install_nequip.sh
RUN cd tools && chmod +x ./install_lammps.sh && ./install_lammps.sh