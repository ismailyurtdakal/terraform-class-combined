resource "aws_iam_group" "developers" {
  name = "developers_group"
  path = "/users/"
}