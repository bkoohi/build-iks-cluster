##############################################################################
# Default VPC
##############################################################################
resource "ibm_is_vpc" "lab_vpc" {
  name           = var.lab_vpc_name
  resource_group = data.ibm_resource_group.group.id
}
##############################################################################
# Default ssh key
##############################################################################
data "ibm_is_ssh_key" "sshkey" {
  name = var.ssh_keyname
}

##############################################################################
# Default resource group
##############################################################################
data "ibm_resource_group" "group" {
  name = var.resource_group_name
}
##############################################################################
# Security Group for Public Load Balancer
##############################################################################

#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_tcp_443" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "inbound"
#  remote    = "0.0.0.0/0"
#  tcp {
#    port_min = 443
#    port_max = 443
#  }
#}
#resource "ibm_is_security_group_rule" "pub_allb_security_group_rule_udp_443" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "inbound"
#  remote    = "0.0.0.0/0"
#  udp {
#    port_min = 443
#    port_max = 443
#  }
#}
#
#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_tcp_22" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "inbound"
#  remote    = "0.0.0.0/0"
#  tcp {
#    port_min = 22
#    port_max = 22
#  }
#}
#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_tcp_80" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "inbound"
#  remote    = "0.0.0.0/0"
#  tcp {
#    port_min = 80
#    port_max = 80
#  }
#}
#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_icmp" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "inbound"
#  remote    = "0.0.0.0/0"
#  icmp {
#    type = 8
#  }
#}
#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_tcp_80_outbound" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "outbound"
#  remote    = "0.0.0.0/0"
#  tcp {
#    port_min = 80
#    port_max = 80
#  }
#}
#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_tcp_443_outbound" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "outbound"
#  remote    = "0.0.0.0/0"
#  tcp {
#    port_min = 443
#    port_max = 443
#  }
#}
#resource "ibm_is_security_group_rule" "pub_alb_security_group_rule_tcp_22_outbound" {
#  group     = ibm_is_security_group.pub_alb_security_group.id
#  direction = "outbound"
#  remote    = "0.0.0.0/0"
#  tcp {
#    port_min = 22
#    port_max = 22
#  }
#}
