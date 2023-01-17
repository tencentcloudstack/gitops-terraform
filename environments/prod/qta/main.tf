module "network" {
  source = "../../../modules/network"

  vpc_name     = "simple-vpc"
  vpc_cidr     = "10.0.0.0/16"
  network_cidr = "10.0.0.0/24"
  subnet_name  = "simple-subnet"
}

module "security_group" {
  source = "../../../modules/security_group"

  security_group_name = "simple-security-group"
  security_ingress_rules = [
    "ACCEPT#10.0.0.0/16#ALL#ALL",
    "ACCEPT#172.16.0.0/22#ALL#ALL",
  ]
  security_egress_rules = [
    "ACCEPT#0.0.0.0/0#ALL#ALL"
  ]
}

#module "tencentcloud_tke" {
#  source = "../../../modules/tke"
#
#  vpc_id    = module.network.vpc_id
#  subnet_id = module.network.subnet_id
#  sg_id     = module.security_group.security_group_id
#}
