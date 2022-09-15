resource "tencentcloud_security_group" "sg" {
  name        = var.security_group_name
  tags        = var.tags
}

resource "tencentcloud_security_group_lite_rule" "sg_rules" {
  security_group_id = tencentcloud_security_group.sg.id
  ingress           = var.security_ingress_rules
  egress = var.security_egress_rules
}