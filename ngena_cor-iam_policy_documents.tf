# 1. IAM Policy Document for Creation of resources necessary to attach Customer VPC to ngena AWS Cloud Gateway
# This policy is attached to IAM Role used by ngena AWS API Provisioning User

data "aws_iam_policy_document" "iam-policy-attachment" {
  statement {
    sid       = "DeleteTGWvpcAttachment"
    effect    = "Allow"
    actions   = ["ec2:DeleteTransitGatewayVpcAttachment"]
    resources = ["*"]
    condition {
      test     = "StringEquals"
      variable = "ec2:ResourceTag/ngena"
      values   = ["sdwan"]
    }
  }
  statement {
    sid    = "CreateTGWvpcAttachment"
    effect = "Allow"
    actions = [
      "ram:GetResourceShareInvitations",
      "ram:ListResources",
      "ram:GetResourceShares",
      "ram:AcceptResourceShareInvitation",
      "ram:DisassociateResourceShare",
      "ec2:DescribeTags",
      "ec2:CreateTags",
      "ec2:DeleteRoute",
      "ec2:DescribeTransitGateways",
      "ec2:DescribeVpcs",
      "ec2:DescribeSubnets",
      "ec2:CreateTransitGatewayVpcAttachment",
      "ec2:CreateRoute",
      "ec2:DescribeAccountAttributes",
      "ec2:DescribeTransitGatewayAttachments",
      "ec2:DescribeTransitGatewayVpcAttachments",
      "ec2:DescribeRouteTables"
    ]
    resources = ["*"]
  }
}

# 2. IAM Role Template for IAM Role used by ngena AWS API Provisioning User
data "aws_iam_policy_document" "ngena-cor-iam-role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = var.ngena_api_user_arn
    }

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = var.external_id
    }
  }
}
