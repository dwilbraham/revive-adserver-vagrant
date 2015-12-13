# Revive adserver vagrant configuration

Vagrant configuration to launch a 
[revive-adserver](https://github.com/revive-adserver/revive-adserver) VM.

Using [librarian-puppet](https://github.com/rodjek/librarian-puppet) to manage
[puppet](http://puppetlabs.com/) modules following the example from 
[librarian-puppet-vagrant](https://github.com/purple52/librarian-puppet-vagrant).

## How to use

Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Install [Vagrant](http://www.vagrantup.com/downloads.html)

Start up your revive VM:

    git clone https://github.com/dwilbraham/revive-adserver-vagrant.git
    cd revive-adserver-vagrant
    vagrant up

Find the IP of the vagrant VM you have launched and browse to that IP (you should be redirected to the SSL version)

Finish the setup process with the following default settings:

    Database Name = revivedb
    User          = revive
    Password      = revive123
    Hostname      = localhost

The above defaults can be changed in ```puppet/environment/production/manifests/site.pp```
