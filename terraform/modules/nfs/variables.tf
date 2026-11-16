variable "id" {
  description = "ID of the NFS storage"
  type        = string
}

variable "server" {
  description = "NFS server address"
  type        = string
}

variable "export" {
  description = "NFS export path"
  type        = string
}

variable "content" {
  description = "Content type of the NFS storage"
  type        = list(string)
}

variable "nodes" {
  description = "List of Proxmox nodes where the NFS storage will be available"
  type        = list(string)
}