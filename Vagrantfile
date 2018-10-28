# Vagrantfile

RELEASE='Alpha'

VM_MEMORY=8192
VM_CORES=2

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-18.04'

  config.vm.provider :virtualbox do |v, override|
    v.memory = VM_MEMORY
    v.cpus = VM_CORES

    required_plugins = %w( vagrant-vbguest )
    required_plugins.each do |plugin|
      system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
    end
  end

  config.vm.provision 'shell' do |s|
    s.inline = 'echo Setting up machine name'

    config.vm.provider :virtualbox do |v, override|
      v.name = "vagrant_nerves #{RELEASE}"
    end
  end

  config.vm.provision 'shell', privileged: true, path: 'shell_scripts/install_via_apt.sh'
  config.vm.provision 'shell', privileged: true, path: 'shell_scripts/install_fwup.sh'
  config.vm.provision 'shell', privileged: false, path: 'shell_scripts/install_asdf.sh'
  config.vm.provision 'shell', privileged: false, path: 'shell_scripts/install_erlang.sh'
  config.vm.provision 'shell', privileged: false, path: 'shell_scripts/install_elixir.sh'
  config.vm.provision 'shell', privileged: false, path: 'shell_scripts/install_nodejs.sh'
  config.vm.provision 'shell', privileged: false, path: 'shell_scripts/install_nerves.sh'
end
