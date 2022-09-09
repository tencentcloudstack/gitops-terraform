output "vpc_id" {
  description = "The id of vpc."
  value       = var.vpc_id != "" ? var.vpc_id : concat(tencentcloud_vpc.vpc.*.id, [""])[0]
}