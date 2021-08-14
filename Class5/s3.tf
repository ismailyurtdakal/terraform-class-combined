resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "s3_class5_bucket-"
  acl           = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


# resource "random_password" "password" {
#   length           = 16
#   special          = false
#   override_special = "_%@"
#   min_upper = 0
# }

# output "random" {
# value = random_password.password.result
# }

#INSTEAD OF bucket we use bucket_prefix then terraform add some random numbers and create if for  us
# resource "aws_s3_bucket" "bucket" {
#   bucket = var.bucket_name
#   acl    = "private"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

#Since we added bucket_prefix, we do not need this below code anymore
# variable "bucket_name" {
#    default     = "s3_class5_bucket"

# }


