FROM nvidia/cuda:10.2-devel-ubuntu16.04

#Install dependencies and required requisites
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable && \
    apt-get update && apt-get install -y --no-install-recommends \
    git \
    cmake \
    build-essential \
    libboost-program-options-dev \
    libboost-filesystem-dev \
    libboost-graph-dev \
    libboost-regex-dev \
    libboost-system-dev \
    libboost-test-dev \
    libeigen3-dev \
    libsuitesparse-dev \
    libfreeimage-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    libglew-dev \
    qtbase5-dev \
    libqt5opengl5-dev \
    libatlas-base-dev \
    libsuitesparse-dev \
    libtiff-dev \
    libpng-dev \
    libjpeg-dev \
    libvtk6-dev \
    python-dev \
    python-gdal \
    python-pip \
    gdal-bin \
    libgdal-dev \
    libtbb2 \
    libtbb-dev \
    libeigen3-dev \
    libflann-dev \
    libboost-date-time-dev \
    libboost-filesystem-dev \
    libboost-iostreams-dev \
    libboost-log-dev \
    libboost-python-dev \
    libboost-regex-dev \
    libboost-thread-dev \
    wget \
    exiftool

# TODO: add files
# TODO: change folder

RUN pip install -r requirements.txt 

# Cleanup APT
RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

# Entry point
ENTRYPOINT ["bash"]