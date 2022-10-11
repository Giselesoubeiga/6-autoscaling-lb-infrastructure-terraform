variable "role-name" {
    type = string
    description = "name of the role. In this case, SSM ROLE"
    default = "ec2Role4ssm-role"
}

variable "policy-name" {
    type = string
    description = "name of the policy. in this case, SSM policy"
    default = "SSMFullAccess"
}