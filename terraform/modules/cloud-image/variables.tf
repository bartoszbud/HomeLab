#tflint-ignore: terraform_unused_declarations
/*variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
}

#tflint-ignore: terraform_unused_declarations
variable "pm_user" {
  description = "Proxmox User"
  type        = string
}

#tflint-ignore: terraform_unused_declarations
variable "pm_api_token_id" {
  description = "Proxmox API Token ID"
  type        = string
  sensitive   = true
}

#tflint-ignore: terraform_unused_declarations
variable "pm_api_token_secret" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

#tflint-ignore: terraform_unused_declarations
variable "pm_tls_insecure" {
  description = "Proxmox TLS Insecure"
  type        = bool
  default     = true
}*/

/*variable "cloud_image" {
  description = "value"
  type = map(object({
    content_type = string
    datastore_id = string
    node_name    = string
    url          = string
    file_name    = string
  }))
}*/

variable "content_type" {
  description = "Content type of the file to be downloaded"
  type        = string
}

variable "datastore_id" {
  description = "ID of the datastore where the file will be stored"
  type        = string
}

variable "node_name" {
  description = "Name of the Proxmox node where the file will be downloaded"
  type        = string
}

variable "url" {
  description = "URL of the file to be downloaded"
  type        = string
}

variable "file_name" {
  description = "Name of the file to be downloaded"
  type        = string
}