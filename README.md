# Revive adserver Vagrant configuration

Vagrant configuration to launch a 
[revive-adserver](https://github.com/revive-adserver/revive-adserver) VM.

It uses [Librarian-puppet](https://github.com/rodjek/librarian-puppet) to manage
[Puppet](http://puppetlabs.com/) modules following the example from 
[librarian-puppet-vagrant](https://github.com/purple52/librarian-puppet-vagrant).

## How to use

Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
Install [Vagrant](http://www.vagrantup.com/downloads.html)

    git clone https://github.com/dwilbraham/revive-adserver-vagrant.git
    cd revive-adserver-vagrant
    vagrant up
    