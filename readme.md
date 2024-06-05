# aws-github-oidc

## Description

Terraform code for creating an OIDC role for use with actions in a Github org

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy.admin_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_id_list"></a> [client\_id\_list](#input\_client\_id\_list) | A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. | `list(string)` | <pre>[<br>  "sts.amazonaws.com"<br>]</pre> | no |
| <a name="input_github_org_name"></a> [github\_org\_name](#input\_github\_org\_name) | Name of the Github organization. | `string` | n/a | yes |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | Name for the iam role. | `string` | n/a | yes |
| <a name="input_provider_url"></a> [provider\_url](#input\_provider\_url) | Url for the iss provider. | `string` | `"https://token.actions.githubusercontent.com"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to aws resources. | `map(any)` | n/a | yes |
| <a name="input_thumbprint_list"></a> [thumbprint\_list](#input\_thumbprint\_list) | Oidc provider thumbprint list. | `list(string)` | <pre>[<br>  "6938fd4d98bab03faadb97b34396831e3780aea1"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | IAM role name. |
<!-- END_TF_DOCS -->