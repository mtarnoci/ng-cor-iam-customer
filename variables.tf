
variable "external_id" {
  description = "Unique identifier used by ngena to assume a role in customer account (used in IAM Role Policy template)"
  type        = list(string)
}

variable "ngena_api_user_arn" {
  description = "Unique identifier used by ngena to assume a role in customer account (used in IAM Role Policy template)"
  type        = list(string)
}

variable "policy" {
  description = "(Required) The policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  default     = null
}

variable "policy_path" {
  description = "(Optional) Path in which to create the policy. See IAM Identifiers for more information."
  type        = string
  default     = "/"
}

variable "assume_role_policy" {
  description = "(Required) Policy that grants an entity permission to assume the role."
  default     = null
}

variable "max_session_duration" {
  description = "(Optional) Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  type        = string
  default     = "3600"
}

variable "force_detach_policies" {
  description = "(Optional) Whether to force detaching any policies the role has before destroying it. Defaults to false."
  type        = bool
  default     = false
}

variable "role_permissions_boundary_arn" {
  description = "Permissions boundary ARN to use for IAM role"
  type        = string
  default     = ""
}

variable "role_path" {
  description = "(Optional) Path to the role. See IAM Identifiers for more information."
  type        = string
  default     = "/system/"
}

variable "policy_name" {
  description = "(Optional, Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = "ng-cor-iam-policy"
}

variable "policy_description" {
  description = "(Optional, Forces new resource) Description of the IAM policy."
  type        = string
  default     = "IAM Policy for creating Attachments to ngena AWS Cloud Gateway"
}

variable "role_name" {
  description = "(Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so Terraform cannot perform drift detection on its value and will always show a difference for a configured value after import unless ignore_changes is used."
  type        = string
  default     = "ng-cor-iam-role"
}

variable "role_description" {
  description = "(Optional, Forces new resource) Friendly name of the role. If omitted, Terraform will assign a random, unique name. See IAM Identifiers for more information.."
  type        = string
  default     = "IAM Role for creating Attachments to ngena AWS Cloud Gateway"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(any)
  default     = {}
}

variable "policy_tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(any)
  default     = {}
}

variable "role_tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(any)
  default     = {}
}