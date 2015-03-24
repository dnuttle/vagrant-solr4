#Vagrant::Config.run do |config|
#  config.vm.box = "precise64"
#
#  config.vm.network :hostonly, "192.168.3.101"
#  config.vm.host_name = "solrlab"
#
#  config.vm.provision :shell, path: "provision.sh"
#
#end

Vagrant.configure(2) do |config|
  config.vm.box = "precise64"

  config.vm.network :private_network, ip: "192.168.3.101"
  config.vm.network :forwarded_port, host:8984, guest:8983
  config.vm.network :forwarded_port, host:8985, guest:8984
  config.vm.host_name = "solrlab"
  config.vm.provision "shell", path: "./provision.sh"
  #config.vm.provision "shell", path: "./start-solr.sh", run: "always"
end
