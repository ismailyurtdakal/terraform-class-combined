resource "aws_iam_user" "tim" {
 name=each.key  
path = "/system/"
for_each = toset([
  "ali",
  "veli",
  "deli",
  "zeki",
  "bill",
  "james"
])
tags = {
    Team = "DevOps"
  }
}
