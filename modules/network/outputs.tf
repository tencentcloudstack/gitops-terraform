output "vpc_id" {
  description = "The id of vpc."
  value       = tencentcloud_vpc.vpc.id
}

output "subnet_id" {
  description = "The id of subnet."
  value       = tencentcloud_subnet.subnet.id
}