variable "available_zone" {
  type        = string
  default     = "ap-guangzhou-3"
  description = "Specify available zone of VPC subnet and TKE nodes."
}

variable "vpc_id" {
  type        = string
  description = "vpc id."
}

variable "subnet_id" {
  type        = string
  description = "subnet id."
}

variable "sg_id" {
  type        = string
  description = "security group id."
}

variable "cluster_name" {
  type        = string
  default     = "example-cluster"
  description = "TKE managed cluster name."
}

variable "cluster_version" {
  type        = string
  default     = "1.22.5"
  description = "Cluster kubernetes version."
}

variable "cluster_cidr" {
  type        = string
  default     = "172.16.0.0/22"
  description = "Cluster cidr, conflicts with its subnet."
}

variable "cluster_os" {
  type        = string
  default     = "tlinux2.2(tkernel3)x86_64"
  description = "Cluster operation system image name."
}

variable "cluster_public_access" {
  type        = bool
  default     = true
  description = "Specify whether to open cluster public access."
}

variable "cluster_private_access" {
  type        = bool
  default     = true
  description = "Specify whether to open cluster private access."
}

variable "worker_count" {
  type        = number
  default     = 1
  description = "Specify node count."
}

variable "worker_instance_type" {
  type        = string
  default     = "S5.MEDIUM2"
  description = "Cluster node instance type."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the tke."
}