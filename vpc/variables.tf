variable "tags" {
    type = string
    description = "Name of the VPC you are creating"
    default = "Project-vpc"
}

variable "vpc-cidr" {
    type = string
    description = "cidr of the vpc"
    default = "10.0.0.0/16"
}