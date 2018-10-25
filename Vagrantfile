RELEASE='Alpha'

VM_MEMORY=8192
VM_CORES=2

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-16.04'

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

  config.vm.provision 'shell', privileged: true, inline:
    "sed -i 's|deb http://us.archive.ubuntu.com/ubuntu/|deb mirror://mirrors.ubuntu.com/mirrors.txt|g' /etc/apt/sources.list
    dpkg --add-architecture i386
    apt-get -q update
    apt-get purge -q -y snapd lxcfs lxd ubuntu-core-launcher snap-confine
    apt-get -q -y install \
      autoconf \
      automake \
      bc \
      build-essential \
      bzr \
      cvs \
      libc6:i386 \
      git \
      libc6:i386 \
      libncurses5-dev \
      mercurial \
      squashfs-tools \
      ssh-askpass \
      subversion \
      unzip \
      vim
    apt-get -q -y autoremove
    apt-get -q -y clean
    update-locale LC_ALL=C"

end
