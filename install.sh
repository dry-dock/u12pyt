#!/bin/bash -e

# install python prereqs
add-apt-repository -y ppa:fkrull/deadsnakes
apt-get update
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev

# Installing pip-7.1.2
cd /u12pyt
python get-pip.py
# Installing virtualenv-13.1.2
cd /u12pyt/virtualenv-13.1.2
python setup.py install
cd /

for file in /u12pyt/version/*;
do
  $file
done
