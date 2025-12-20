# Everything as code for HomeLab

Infrastructure automation for HomeLab based on Proxmox.

<img src="https://www.proxmox.com/images/proxmox/Proxmox_logo_standard_hex_200px.png#joomlaImage://local-images/proxmox/Proxmox_logo_standard_hex_200px.png" alt="Proxmox"/>
<img src="https://icon.icepanel.io/Technology/svg/HashiCorp-Terraform.svg" alt="Terraform" width="50"/>
<img src="https://icon.icepanel.io/Technology/png-shadow-512/Ansible.png" alt="Ansible" width="50"/>


## Cloud init

Download cloud image of choice distro. Lets use Ubuntu 25.04 Plucky Puffin.

```bash
wget https://cloud-images.ubuntu.com/plucky/current/plucky-server-cloudimg-amd64.img
```

Qemu guest agent is not included in the image so the next step is to apply package into it. In order to modify cloud image libguestfs-tools has to be installed.
```bash
apt update -y && apt install -y libguestfs-tools
```

Then use virt-customize to add qemu-guest-agent.
```bash
sudo virt-customize -a plucky-server-cloudimg-amd64.img --install qemu-guest-agent
```

Next step is creation of VM using modified image. VM id could be random.
```bash
qm create 999 --name "ubuntu-2004-cloudinit-template" --cores 2 --cpu host --memory 2048 --net0 virtio,bridge=vmbr0
qm importdisk 999 plucky-server-cloudimg-amd64.img local-lvm # create disk on specific storage
qm set 999 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-999-disk-0 # set disk controller and apply disk
qm set 999 --boot c --bootdisk scsi0 # set boot disk
qm set 999 --ide2 local-lvm:cloudinit # apply cloud init starter to ide2
qm set 999 --agent enabled=1 # enable guest agent
```

Transform created VM into template
```bash
qm template 999
```

VM template is ready to be deployed using Terraform.


## Terraform

## Ansible
