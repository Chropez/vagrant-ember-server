curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

# Installs nvm
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile
nvm install stable
nvm alias default stable


# Installs ember
npm install -g bower
npm install -g ember-cli
npm install -g phantom