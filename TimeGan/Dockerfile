FROM nvidia/cuda:12.4.0-base-ubuntu22.04

RUN apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y ca-certificates \
    && apt-get install -y ccache \
    && apt-get install -y cmake \
    && apt-get install -y curl \
    && apt-get install -y file \
    && apt-get install -y sudo \
    && apt-get install -y git \
    && apt-get install -y vim \
    && apt-get install -y wget\
    && apt-get install -y locales 

# remove files
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# install miniforge
COPY Miniforge3-Linux-x86_64.sh /usr/local/src
RUN bash /usr/local/src/Miniforge3-Linux-x86_64.sh -b
ENV PATH $PATH:/root/miniforge3/bin
RUN conda install python=3.8
RUN conda install -c conda-forge jupyterlab

# install packages by pip
COPY requirements_pip.txt /tmp
RUN pip3 install --upgrade pip \
    && pip3 install --no-cache-dir -r /tmp/requirements_pip.txt \
    && rm -rf ~/.cache/pip


ENV CMAKE_PREFIX_PATH="$(dirname $(which conda))/../"
ENV MAX_JOBS=2


WORKDIR /home/work/

CMD ["jupyter-lab", "--ip=0.0.0.0","--port=8880" ,"--no-browser", "--allow-root", "--LabApp.token=''"]
