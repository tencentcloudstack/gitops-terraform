module "network" {
  source = "../../modules/network"

  vpc_name     = "simple-vpc"
  vpc_cidr     = "10.1.0.0/16"
  network_cidr = "10.1.0.0/24"
  subnet_name  = "simple-subnet-dev"
}