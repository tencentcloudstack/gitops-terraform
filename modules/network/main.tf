resource "tencentcloud_vpc" "vpc" {
  name         = var.vpc_name
  cidr_block   = var.vpc_cidr
  is_multicast = var.vpc_is_multicast
  dns_servers  = length(var.vpc_dns_servers) > 0 ? var.vpc_dns_servers : null
  tags         = var.vpc_tags
}

resource "tencentcloud_subnet" "subnet" {
  availability_zone = var.available_zone
  cidr_block        = var.network_cidr
  name              = var.subnet_name
  vpc_id            = tencentcloud_vpc.vpc.id
  tags              = var.subnet_tags
}