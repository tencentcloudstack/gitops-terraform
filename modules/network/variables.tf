variable "vpc_id" {
  default     = ""
  description = "The vpc id used to launch resources."
}

variable "vpc_name" {
  default     = "tf-modules-vpc"
  description = "The vpc name used to launch a new vpc when 'vpc_id' is not specified."
}

variable "vpc_cidr" {
  default     = "172.16.0.0/16"
  description = "The cidr block used to launch a new vpc when 'vpc_id' is not specified."
}

variable "vpc_is_multicast" {
  default     = true
  description = "Specify the vpc is multicast when 'vpc_id' is not specified."
}

variable "vpc_dns_servers" {
  type        = list(string)
  default     = []
  description = "Specify the vpc dns servers when 'vpc_id' is not specified."
}

variable "vpc_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the vpc."
}

variable "available_zone" {
  type        = string
  default     = "ap-guangzhou-3"
  description = "Specify available zone of VPC subnet and TKE nodes."
}

variable "network_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Specify VPC and subnet CIDR."
}

variable "subnet_name" {
  type        = string
  default     = "example-subnet"
  description = "Specify custom Subnet Name."
}

variable "subnet_tags" {
  type = map(string)
  default     = {}
  description = "Tagged for all associated resource of this module."
}