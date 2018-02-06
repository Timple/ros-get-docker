FROM ros:kinetic-ros-core

RUN apt-get update && apt-get install -y \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /root/src
WORKDIR /root/src

# install ros-get
RUN git clone https://github.com/Rayman/ros-get.git
RUN pip install --user -e ros-get/
ENV PATH /root/.local/bin:$PATH
