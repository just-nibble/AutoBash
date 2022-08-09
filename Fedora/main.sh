## Official Repos ##
sudo dnf group install "C Development Tools and Libraries" "Development Tools" -y &&
sudo dnf install cmake -y &&

sudo dnf install dnf-plugins-core -y &&
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo -y &&
sudo dnf install docker-ce docker-ce-cli containerd.io -y &&

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y &&
sudo dnf install telegram -y && 
sudo dnf -y install bridge-utils libvirt virt-install qemu-kvm -y &&
sudo dnf install libvirt-devel virt-top libguestfs-tools guestfs-tools -y &&
sudo dnf -y install virt-manager -y &&

## Configure Docker ##
sudo systemctl start docker.service &&
sudo systemctl enable docker.service &&
sudo usermod -aG docker $USER &&

## Configure KVM ##
sudo systemctl enable libvirtd.service &&
sudo systemctl start libvirtd.service &&
echo unix_sock_group = "\"libvirt\"" >> /etc/libvirt/libvirtd.conf &&
echo unix_sock_rw_perms = "\"0770\"" >> /etc/libvirt/libvirtd.conf
