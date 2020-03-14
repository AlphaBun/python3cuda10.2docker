FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu16.04

RUN echo "Installing dependencies..." && \
	apt-get -y --no-install-recommends update && \
	apt-get -y --no-install-recommends upgrade && \
	apt-get install -y --no-install-recommends \
	wget \
	build-essential \
	git \
	libatlas-base-dev \
	libprotobuf-dev \
	libleveldb-dev \
	libsnappy-dev \
	libhdf5-serial-dev \
	protobuf-compiler \
	libboost-all-dev \
	libgflags-dev \
	libgoogle-glog-dev \
	liblmdb-dev \
	pciutils \
	python3-setuptools \
	python3-dev \
	python3-pip \
	opencl-headers \
	ocl-icd-opencl-dev \
	libviennacl-dev \
	libcanberra-gtk-module \
	nano \
	libopencv-dev && \
	python3 -m pip install --upgrade pip && \
	python3 -m pip install \
	matplotlib \
	numpy \
	protobuf \
	opencv-python

WORKDIR /projectmain
