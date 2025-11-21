Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
  end

  # --------- MÁQUINA 1: Servidor web (Nginx) ----------
  config.vm.define "web" do |web|
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.56.10"

    web.vm.provider "virtualbox" do |vb|
      vb.memory = 1024     # 1 GB RAM
      vb.cpus   = 1        # 1 CPU
    end
  end

  # --------- MÁQUINA 2: Monitoreo (Prometheus + Grafana) ----------
  config.vm.define "monitoring" do |mon|
    mon.vm.hostname = "monitoring"
    mon.vm.network "private_network", ip: "192.168.56.11"

    mon.vm.provider "virtualbox" do |vb|
      vb.memory = 2048     # 2 GB RAM
      vb.cpus   = 2        # 2 CPUs
    end
  end
end
