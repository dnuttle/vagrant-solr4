Vagrant::Config.run do |config|
  config.vm.box = "precise64"

  config.vm.network :hostonly, "192.168.3.101"
  config.vm.host_name = "solr1"

  config.vm.provision :shell, path: "provision.sh"

end
