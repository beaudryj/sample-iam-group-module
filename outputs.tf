###########################
#    Group
###########################

output "created-iam-group-name" {
  value       = aws_iam_group.group.name
  description = "Name of IAM group created."
}

output "created-iam-group-id" {
  value       = aws_iam_group.group.id
  description = "ID of IAM group created."
}

output "created-iam-group-arn" {
  value       = aws_iam_group.group.arn
  description = "Arn of IAM group created."
}

###########################
#    Policy ARN 
###########################

output "policy-arn" {
  value       = var.create_policy ? aws_iam_policy.policy[0].arn : var.existing_policy_arn
  description = "ARN of Policy Used."
}