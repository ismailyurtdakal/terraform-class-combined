resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "s3_class5_bucket-"
  acl           = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }

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


#------------
// resource "aws_s3_bucket_object" "object" {
//   bucket = "s3-class-with-evolve-cyber-20210709014628599500000001"
//   key    = "new_object_key"
//   source = "/etc/passwd"

//   # The filemd5() function is available in Terraform 0.11.12 and later
//   # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
//   # etag = "${md5(file("path/to/file"))}"
// //   etag = filemd5("path/to/file")
// }



// resource "aws_s3_bucket_object" "object2" {
//   bucket = "s3-class5------------name of the bucket from s3"
//   key    = "welcome"
//   source = "welcome"

//   # The filemd5() function is available in Terraform 0.11.12 and later
//   # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
//   # etag = "${md5(file("path/to/file"))}"
// //   etag = filemd5("path/to/file")
// }