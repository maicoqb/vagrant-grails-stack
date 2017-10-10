

echo "Installing NodeJS"
sudo apt-get install -y nodejs npm

echo "Installing MongoDB version Manager"
sudo npm install -g m

echo "Installing MongoDB 2.6.11"
m 2.6.11

rm -rf /home/vagrant/mongodb
mkdir -p /home/vagrant/mongodb
