

echo "$0 - Installing NodeJS"
sudo apt-get install -y nodejs npm

echo "$0 - Installing MongoDB version Manager"
sudo npm install -g m

echo "$0 - Installing MongoDB 2.6.11"
m 2.6.11

rm -rf /home/vagrant/mongodb
mkdir -p /home/vagrant/mongodb
