# Docker for Nequip

This docker project is set up to simplify Nequip and LAMMPS installation on a GPU machine.

### Building

```
git clone https://github.com/gabriele16/nequip.git
cd nequip/tools && docker build -f Dockerfile ../ -t nequip-docker:gpu 
```

It will take some time to download necessary packages and install them.

### Training a model

[Docker Compose](https://docs.docker.com/compose/) can be used for training, deploying a model and also running MD on LAMMPS, as well as the whole pipeline. To that end you can edit the `docker-compose.yml`. Use `docker-compose up` to start the training of a minimal example.
