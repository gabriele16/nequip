FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu18.04
#FROM ubuntu:22.04

WORKDIR /opt/nequip

COPY ./tools/* ./
RUN chmod +x ./install_requirements.sh
RUN ./install_requirements.sh

CMD ["python3", "torch_test.py"]