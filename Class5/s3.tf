resource "random_password" "password" {
  length           = 16
  special          = false
  override_special = "_%@"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-${random_password.password.result}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}