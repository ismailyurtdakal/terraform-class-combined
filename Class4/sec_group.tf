resource "aws_security_group" "allow_tls" {
  name        = var.sec_group_name
  description = var.description
  ingress {
    description = "TLS from VPC"
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.allowed_hosts
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.key_tags
}