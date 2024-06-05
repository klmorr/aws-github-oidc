variable "github_org_name" {
  type        = string
  description = "Name of the Github organization."
}

variable "client_id_list" {
  type        = list(string)
  description = "A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application."
  default     = ["sts.amazonaws.com"]
}

variable "iam_role_name" {
  type        = string
  description = "Name for the iam role."
}

variable "provider_url" {
  type        = string
  description = "Url for the iss provider."
  default     = "https://token.actions.githubusercontent.com"
}

variable "tags" {
  type = map(any)
  description = "Tags to apply to aws resources."
}

variable "thumbprint_list" {
  type        = list(string)
  description = "Oidc provider thumbprint list."
  default     = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
}