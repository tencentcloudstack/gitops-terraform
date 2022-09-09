resource "tencentcloud_vpc" "vpc" {
  count        = var.vpc_id == "" ? 1 : 0
  name         = var.vpc_name
  cidr_block   = var.vpc_cidr
  is_multicast = var.vpc_is_multicast
  dns_servers  = length(var.vpc_dns_servers) > 0 ? var.vpc_dns_servers : null
  tags         = var.vpc_tags
}