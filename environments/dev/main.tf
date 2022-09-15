module "network" {
  source = "../../modules/network"

  vpc_name     = "simple-vpc-dev"
  vpc_cidr     = "10.4.0.0/16"
  network_cidr = "10.4.0.0/24"
  subnet_name  = "simple-subnet-dev"
}