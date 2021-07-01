resource "aws_iam_group" "developers" {
  name = "developers_group"
  path = "/users/"
  for_each = toset([
    "bob",
    "tim",
    "sam",
    "ben",
    "lisa"
  ])
}


