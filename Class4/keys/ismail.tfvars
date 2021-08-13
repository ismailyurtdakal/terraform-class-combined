
key_name       = "ismail"
instance_type  = "t3.micro"
region         = "eu-west-1"
public_key     = "~/.ssh/id_rsa.pub"
sec_group_name = "sec_group"
description    = "some description"
from_port      = "443"
to_port        = "443"

allowed_hosts = [
  "104.181.144.186/32",
  "104.181.144.185/32",
  "104.181.144.187/32",
  "104.181.144.188/32",
  "104.181.144.189/32",
  "104.181.144.181/32",
]


key_tags = {
  Name    = "Wordpress"
  Env     = "Dev"
  Team    = "DevOps"
  Quarter = "1"
  Bill    = "CFO"
}