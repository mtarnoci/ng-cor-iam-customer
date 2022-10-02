# 1. Create IAM Policies for ngena AWS Cloud Gateway provisioning
resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = var.policy_description
  path        = var.policy_path
  policy      = var.policy != null ? var.policy : data.aws_iam_policy_document.iam-policy-attachment.json
  tags = merge(
    var.tags,
    var.policy_tags
  )
}

# 2. Create IAM Role for ngena AWS Cloud Gateway provisioning
resource "aws_iam_role" "this" {
  name                  = var.role_name
  description           = var.role_description
  path                  = var.role_path
  max_session_duration  = var.max_session_duration
  force_detach_policies = var.force_detach_policies
  permissions_boundary  = var.role_permissions_boundary_arn
  assume_role_policy    = var.assume_role_policy != null ? var.assume_role_policy : data.aws_iam_policy_document.ngena-cor-iam-role.json
  tags = merge(
    var.tags,
    var.role_tags
  )
}

# 3. Attach IAM Policies to IAM Role
resource "aws_iam_role_policy_attachment" "att-cor-policy" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}
