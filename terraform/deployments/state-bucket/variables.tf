variable "environment" {
  description = "Environment name"
  type        = string
}

variable "module_name" {
  description = "Module name"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "enable_logging" {
  description = "Enable logging for the S3 bucket"
  type        = bool
  default     = true
}

variable "block_public_acls" {
  description = "Block public access for the S3 bucket"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Block public policy for the S3 bucket"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Ignore public ACLs for the S3 bucket"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Restrict public buckets for the S3 bucket"
  type        = bool
  default     = true
}