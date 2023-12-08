variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
}

variable "region" {
  description = "DigitalOcean Region"
  type        = string
  default     = "ams3"
}

variable "project_name" {
  description = "DigitalOcean Project name"
  type        = string
  default     = "kube-project"
}

variable "environment" {
  type = string
  default = "Development"
}
