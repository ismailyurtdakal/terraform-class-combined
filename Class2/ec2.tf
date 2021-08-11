resource "aws_instance" "web" {
  ami                         = "ami-0277b52859bac6f4b"
  instance_type               = "t3.micro"
  count                       = 3
  availability_zone           = "us-east-2a"
  associate_public_ip_address = true
  monitoring                  = true
  key_name                    = aws_key_pair.class2.key_name
  user_data                   = file("user_data.sh")
  tags = {
    Name      = "Web ${count.index + 1}"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}

