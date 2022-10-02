# ng-cor-iam-customer

#### Inputs

Name | Description | Type | Required|Default
---- | ----------- | ---- |-------  |-------
`external_id` |Unique identifier used by ngena to assume a role in customer account (used in IAM Role Policy template).| list(string) |Yes| `N/A`
`ngena_api_user_arn` |IAM user Principal ARN    whhich can assume a role in customer account (used in IAM Role Policy template).|string |Yes| `N/A`
`policy`|The policy document. This is a JSON formatted string.|object|Yes| `N/A`
`policy_path`|Path in which to create the policy.|string|No|`"/"`
`assume_role_policy`|Policy that grants an entity permission to assume the role.This is a JSON formatted string.|object|Yes|`N/A`
`max_session_duration`|Maximum session duration (in seconds) that you want to set for the specified role.|string|No|`"3600"`
`force_detach_policies`|Whether to force detaching any policies the role has before destroying it.|boolean|No|`false`
`role_permissions_boundary_arn`|Permissions boundary ARN to use for IAM role.|string|No|`""`
`role_path`|Path to the role. See IAM Identifiers for more information.|string|No|`"/system/"`
`policy_name`|(Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name.|string|No|`"ng-cor-iam-policy"`
`policy_description`|(Forces new resource) Description of the IAM policy.|string|No|`"IAM Policy for creating Attachments to ngena AWS Cloud Gateway"`
`role_name`|The name of an IAM role name.|string|No|`"ng-cor-iam-role"`
`role_description`|(Forces new resource) Description of the IAM Role.|string|No|`"IAM Role for creating Attachments to ngena AWS Cloud Gateway"`
`tags`|Key-value map of resource tags.|map(any)|No|`{}`
`red-cedges` |Day0 config for RED cEdges.|map | `{}`
`policy_tags`|Key-value map of resource tags. Can be used if dedicated tags for policy should be configured.|map(any)|No|`{}`
`role_tags`|Key-value map of resource tags.Can be used if dedicated tags for the Role should be configured.|map(any)|No|`{}`
