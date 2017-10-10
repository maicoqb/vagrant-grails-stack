#!/bin/bash
# Update SDKMan dependencies
# sudo apt-get update && sudo apt-get install -y curl zip unzip

echo "$0 - Installing SDKMan"
su - vagrant -c 'curl -s "https://get.sdkman.io" | bash'

echo "$0 - Installing Java"
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk install java 7u141-zulu'
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk default java 7u141-zulu'

echo "$0 - Installing Grails"
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk install grails 3.2.2'
su - vagrant -c 'source "/home/vagrant/.sdkman/bin/sdkman-init.sh" && sdk default grails 3.2.2'

cat <<EOF >> /home/vagrant/.bashrc

export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH"

EOF
