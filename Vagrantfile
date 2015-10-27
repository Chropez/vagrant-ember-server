Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Ember default port
  config.vm.network "forwarded_port", guest: 4200, host: 4200

  # LiveReload default port
  config.vm.network "forwarded_port", guest: 35729, host: 35729

  config.vm.hostname = "ember-server"
  config.vm.network "public_network", ip: "192.168.1.160"

  # File Provisioning
  config.vm.provision "file", source: "smb.conf", destination: "smb.conf"
  
  # Scripts Provisioning
  config.vm.provision "shell", path: "provision1-sudo.sh" 
  config.vm.provision "shell", path: "provision2-user.sh", privileged: false  

  config.vm.synced_folder ".", "/vagrant",
    :nfs => true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    #vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
    vb.cpus = 2
    vb.name = "Ember Development"
  end
end
