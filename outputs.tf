
output "document_policy_cor_policy_json" {
  description = "Default Policy document for IAM Policy to support ngena CoR"
  value = data.aws_iam_policy_document.iam-policy-attachment.json
}

output "document_policy_cor_role_json" {
  description = "Default Policy document for Assume role Policy Policy to support ngena CoR"
  value = data.aws_iam_policy_document.ngena-cor-iam-role.json
}

output "iam-policy-arn" {
  description = "ARN of IAM Policy for ngena AWS Cloud Gateway provisioning"
  value = aws_iam_policy.this.arn
}

output "iam-role-arn" {
  description = "ARN of IAM Role for ngena AWS Cloud Gateway provisioning"
  value = aws_iam_role.this.arn
}
