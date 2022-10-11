
variable "resource-name" {
    type = string
    default = "Prod-lb"
}

variable "lb-type" {
    type = string
    description = "Load balancer type, either APPLICATION or NETWORK or GATEWAY"
    default = "application"
}

variable "Prod-name" {
    type = string
    description = "Name of load balancer type"
    default = "prod-target-group"
}

variable "sg_id" {} 

variable "subnet_id" {}

variable "vpc_id" {}

variable "auto_scaling_group" {}