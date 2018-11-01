FROM ubuntu:xenial
MAINTAINER Artur Barseghyan (artur.barseghyan@gmail.com) version 1.0
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y python-pyqt5
RUN apt-get install -y libopencv-dev
RUN apt-get install -y python-opencv
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y git-core
RUN apt-get install -y python-pip
RUN apt-get install -y python-dev
RUN apt-get install -y mc

RUN git clone https://github.com/torch/distro.git torch --recursive

RUN apt-get install -y sudo
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker

RUN cd torch && sudo bash ./install-deps && sudo bash ./install.sh

RUN pip install opencv-python
RUN pip install imutils

RUN echo source /torch/install/bin/torch-activate >> /home/docker/.bashrc
RUN bash -c "source /home/docker/.bashrc"
#RUN cat /home/docker/.bashrc
#RUN bash -c 'compgen -ac'
RUN sudo /torch/install/bin/luarocks install torch
RUN sudo /torch/install/bin/luarocks install nn
RUN sudo /torch/install/bin/luarocks install dpnn
RUN sudo /torch/install/bin/luarocks install torchx
#RUN sudo torch/install/bin/th>dpnn.test()