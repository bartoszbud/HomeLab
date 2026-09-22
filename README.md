<style>
  r { color: Red }
  dr { color: DarkRed  }
  g { color: Green }
  b { color: LightBlue }
  t { color: Teal }
  o { color: Orange }
  y { color: Yellow }
  gr { color: Grey }
</style>

# HomeLab

Everything as code for HomeLab based on Proxmox.

<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/proxmox/proxmox-original-wordmark.svg" alt="Proxmox" width="60"> <img src="https://icon.icepanel.io/Technology/svg/HashiCorp-Terraform.svg" alt="Terraform" width="50"/> <img src="https://icon.icepanel.io/Technology/png-shadow-512/Ansible.png" alt="Ansible" width="50"/>

## Architecture diagrams
### Physical infrastructure
- ISP - 1Gbps connection
- RT1 - Ubiquiti EdgeRouter X
- SW1 - Ubiquiti UniFi Flex mini
- AP1 - TP Link AC1200
- PVE0 - Dell Optiplex 7040, Intel Core i7 6700T, 32GB DDR4, 500GB NVMe
- PVE1 - Dell Optiplex 5090, Intel Core i5 10500T, 32GB DDR4, 500GB NVMe
- PVE2 - Dell Optiplex 5090, Intel Core i5 10500T, 32GB DDR4, 500GB NVME
- NAS - QNAP TS-230

![alt text](images/image-2.png)
### Network segmentation
|VLAN|ID|ADDR|
|---|---|---|
|<r>BASE</r>|<r>1</r>|10.0.1.0/24|
|<b>DC</b>|<b>2</b>|10.0.2.0/24|
|<t>MGMT</t>|<t>3</t>|10.0.3.0/24|
|<gr>ACCESS</gr>|<gr>4</gr>|10.0.4.0/24|
|<o>DATA</o>|<o>5</o>|10.0.5.0/24|
|<g>DEV</g>|<g>6</g>|10.0.6.0/24|
|<y>STAGE</y>|<y>7</y>|10.0.7.0/24|
|<dr>PROD</dr>|<dr>8</dr>|10.0.8.0/24|

### System diagram
![alt text](images/image-1.png)
