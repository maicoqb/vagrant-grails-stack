
MONGODB_VERSION='2.6.11'


sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update
sudo apt-get install -y \
mongodb-org=$MONGODB_VERSION \
mongodb-org-server=$MONGODB_VERSION \
mongodb-org-shell=$MONGODB_VERSION \
mongodb-org-mongos=$MONGODB_VERSION \
mongodb-org-tools=$MONGODB_VERSION

mv /etc/mongod.conf /etc/mongod.conf.bkp
mv /home/vagrant/mongod.conf /etc/mongod.conf

sudo service mongod start
