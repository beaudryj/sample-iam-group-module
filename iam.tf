resource "aws_iam_group" "group" {
  name = var.role_name
}


resource "aws_iam_policy" "policy" {
  count       = var.create_policy ? 1 : 0
  name        = "${var.role_name}-policy"
  description = "Policy Created for ${var.role_name} via Terraform Module"

  policy = var.policy

}


