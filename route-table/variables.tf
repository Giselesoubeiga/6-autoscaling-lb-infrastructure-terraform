variable "route" {
  type = string
  description = "value of cidr to route"
  default = "0.0.0.0/0"
}

variable "rtb-tag" {
    type = string
    description = "Tag of project"
    default = "project-vpc-rtb"
}

variable "vpc_id" {}

variable "gateway_id" {}

variable subnet_id{}