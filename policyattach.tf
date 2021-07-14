resource "aws_iam_group_policy_attachment" "group-policy-attachment" {
  role       = aws_iam_group.group.name
  policy_arn = var.create_policy ? aws_iam_policy.policy[0].arn : var.existing_policy_arn

  depends_on = [aws_iam_group.group, aws_iam_policy.policy]
}
