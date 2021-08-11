resource "aws_iam_user" "user" {
  name = each.key
  path = "/system/"
  for_each = toset([
    "bob",
    "tim",
    "sam",
    "ben",
    "lisa"
  ])
  tags = {
    Team = "DevOps"
  }
}