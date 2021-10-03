Vagrant.configure("2") do |config|


config.vm.define "sosialmedia" do |sosialmedia|
    sosialmedia.vm.box = "ubuntu/xenial64"
    sosialmedia.vm.provision "shell", path: "sosialmedia.sh"
    sosialmedia.vm.network "private_network",ip: "192.168.100.6"
   end

config.vm.define "landingpage" do |landingpage|
    landingpage.vm.box = "ubuntu/xenial64"
    landingpage.vm.provision "shell", path: "landingpage.sh"
    landingpage.vm.network "private_network",ip: "192.168.100.7"
end







end
