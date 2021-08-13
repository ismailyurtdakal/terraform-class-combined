region     = "us-west-2"
key_name   = "sam"
instance_type  = "t3.micro"
public_key = "~/.ssh/id_rsa.pub"

key_tags = {
  Name    = "Wordpress"
  Env     = "Dev"
  Team    = "DevOps"
  Quarter = "1"
  Bill    = "CFO"
}