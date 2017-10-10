#!/bin/bash

JAVA_VERSION='7u141-zulu'
GRAILS_VERSION='3.2.2'

# Update SDKMan dependencies
sudo apt-get update && sudo apt-get install -y curl zip unzip

echo "$0 - Install SDKMan"
su - vagrant -c 'curl -s "https://get.sdkman.io" | bash'

echo "$0 - Install Java"
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk install java $JAVA_VERSION'
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk default java $JAVA_VERSION'

echo "$0 - Install Grails"
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk install grails $GRAILS_VERSION'
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk default grails $GRAILS_VERSION'

echo "$0 - Set JAVA_HOME"
cat <<EOF >> /home/vagrant/.bashrc

export JAVA_HOME="\$HOME/.sdkman/candidates/java/current"
export PATH="\$JAVA_HOME/bin:\$PATH"

EOF
