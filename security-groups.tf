resource "aws_security_group" "shiv_sec-groups" {
  name        = "shiv_allow_rules"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.shiv-exiting-vpc.id

  tags = {
    Name = "shiv_firewall_rules_final"
  }
}
# allow all outgoing ports for ipv4 
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.shiv_sec-groups.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# allow 22 

resource "aws_vpc_security_group_ingress_rule" "allow_tls_tcp_22" {
  security_group_id = aws_security_group.shiv_sec-groups.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
## allow  80 port from everywhere 
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4_http" {
  security_group_id = aws_security_group.shiv_sec-groups.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}