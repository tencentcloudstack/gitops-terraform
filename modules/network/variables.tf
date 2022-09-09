variable "vpc_id" {
  description = "The vpc id used to launch resources."
  default     = ""
}

variable "vpc_name" {
  description = "The vpc name used to launch a new vpc when 'vpc_id' is not specified."
  default     = "tf-modules-vpc"
}

variable "vpc_cidr" {
  description = "The cidr block used to launch a new vpc when 'vpc_id' is not specified."
  default     = "172.16.0.0/16"
}

variable "vpc_is_multicast" {
  description = "Specify the vpc is multicast when 'vpc_id' is not specified."
  default     = true
}

variable "vpc_dns_servers" {
  description = "Specify the vpc dns servers when 'vpc_id' is not specified."
  type        = list(string)
  default     = []
}

variable "vpc_tags" {
  description = "Additional tags for the vpc."
  type        = map(string)
  default     = {}
}