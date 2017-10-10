

echo "Installing NodeJS"
sudo apt-get install -y nodejs npm

echo "Installing MongoDB version Manager"
sudo npm install -g m

m 2.6.11

rm -rf /home/vagrant/mongodb
mkdir -p /home/vagrant/mongodb
mongod --dbpath=/home/vagrant/mongodb --logpath=/home/vagrant/mongodb/logs --logappend --fork
