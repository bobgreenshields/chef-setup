#!/bin/bash
# down load the chef client from https://downloads.chef.io/chef
#
# and install it with sudo dpkg -i <filename.deb>

sudo apt-get install -y nfs-common
mkdir /home/bobg/chef
chown bobg:bobg /home/bobg/chef
touch /home/bobg/chef/config.rb
chown bobg:bobg /home/bobg/chef/config.rb
echo "cookbook_path ['/home/bobg/chef/cookbooks']" > /home/bobg/chef/config.rb
sudo mkdir -p /mnt/nfs/vendor
sudo mount 172.16.77.101:/mnt/secure/vendor /mnt/nfs/vendor
ln -s /mnt/nfs/vendor /home/bobg/vendor
#ln -s /mnt/nfs/vendor/defiant/cookbooks /home/bobg/chef/cookbooks
