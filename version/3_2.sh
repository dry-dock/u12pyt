#!/bin/bash -e

apt-get install -y python3.2 python3.2-dev
cd /u12pyt/python3.2
python3.2 get-pip.py

# Installing virtualenv
cd /u12pyt/python3.2/virtualenv-13.1.2
python setup.py install
virtualenv -p python3.2 $HOME/venv/3.2

# Install pip packages
. $HOME/venv/3.2/bin/activate
pip install nose mock pytest coverage
deactivate
cd /
