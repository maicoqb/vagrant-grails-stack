## Usage
    git clone https://github.com/maicoqb/vagrant-grails-stack.git
    cd vagrant-grails-stack
    vagrant up
    # wait
    vagrant ssh

Inside guest machine go to `/Code` directory and start codding.

## Config

The `config.yaml` file has some properties to configure the guest machine. All information you need is commented on that file.

To add another provision script, just create the file under `scripts` directory and add a reference for it on **scripts** or **script-always** key on config file.
