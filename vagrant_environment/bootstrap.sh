# #!/usr/bin/env bash

set -e

apt-get update
apt-get install -y git
apt-get install -y python3-pip

# ricecooker dependencies
pip3 install ricecooker

pip3 install virtualenvwrapper
### THIS WORKS NOW BECAUSE ARON 
echo 'export WORKON_HOME=/home/ubuntu/.virtualenvs' >> /home/ubuntu/.bashrc
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> /home/ubuntu/.bashrc
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> /home/ubuntu/.bashrc

# CC server
git clone https://github.com/fle-internal/content-curation.git -b unicef_demo --single-branch contentcuration

apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_4.x | bash -

# python2 dependencies
apt-get install -y nodejs python python-dev python-pip gcc libpq-dev
