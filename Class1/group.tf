resource "aws_iam_group" "Team_Developers" {
  name = "developers"
  path = "/users/"
  for_each = toset([
    "bob",
    "tim",
    "sam",
    "ben",
    "lisa"
  ])
}


