#!/bin/bash
echo | sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install -y puppet
sudo cp -r ./puppetdigi /etc/puppet/modules
echo | sudo puppet apply -e 'class {pakettimoduuli:}'

