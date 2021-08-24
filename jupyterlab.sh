#!/usr/bin/env bash

# print commands and their expanded arguments
set -x

cd /opt
apt-get update 
apt-get install -y \
    pkg-config \
    libcairo2-dev \
    python3-venv \
    python3-pip \
    git \
    pkg-config


# Install jupyterhub and associated packages:
cd /vagrant/
pip3 install -U pip
pip3 install --no-cache-dir -r ./requirements.txt

# The following allows dynamic 3-d plotting
curl -sL https://deb.nodesource.com/setup_16.x | /usr/bin/bash -
apt-get install -y nodejs
jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib


