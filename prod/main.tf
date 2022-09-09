module "network" {
  source = "../modules/network"

  vpc_name = "simple-vpc"
  vpc_cidr = "10.0.0.0/16"
}
