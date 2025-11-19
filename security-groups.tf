resource "aws_security_group" "shiv_sec-groups" {
  name        = "shiv_allow_rules"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.Shiv-existing-vpc.id
 
  tags = {
    Name = "shiv_firewall_rules"
  }
}