variable "security_group_name" {
  default     = "tf-modules-security-group-name"
  description = "The security group name."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the security group."
}

variable "security_ingress_rules" {
  type        = list(string)
  default     = []
  description = "security ingress rules."
}

variable "security_egress_rules" {
  type        = list(string)
  default     = []
  description = "security egress rules."
}
