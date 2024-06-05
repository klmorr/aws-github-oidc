output "role_name" {
    description = "IAM role name."
    value = aws_iam_role.this.name
}