#!/bin/bash
echo | sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install -y puppet
sudo cp -r ./finaldigi /etc/puppet/modules/pakettimoduuli
sudo puppet apply -e 'class {pakettimoduuli:}'
sudo cp -r template.html /var/www/html/index.html
