resource "aws_iam_group" "developers" {
  name = "developers_group"
  path = "/users/"
}


resource "aws_iam_group" "sales_gr" {
  name = "sales_group"
}