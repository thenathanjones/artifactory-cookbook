# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = 'artifactory'

  # Set the version of chef to install using the vagrant-omnibus plugin
  # NOTE: You will need to install the vagrant-omnibus plugin:
  #
  #   $ vagrant plugin install vagrant-omnibus
  #
  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = 'latest'
  end

  config.vm.box = 'chef/centos-7.0'

  config.vm.network :private_network, type: 'dhcp'

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {}

    chef.run_list = [
      'recipe[artifactory::default]'
    ]
  end

  config.vm.network "forwarded_port", guest: 8081, host: 8081
end
