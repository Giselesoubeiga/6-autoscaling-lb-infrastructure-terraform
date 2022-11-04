variable "min-size" {
    type = string
    description = "Minimum number of instances"
    default = 1
}

variable "desired-size" {
    type = string
    description = "Minimum number of instances"
    default = 3
}

variable "max-size" {
    type = string
    description = "Minimum number of instances"
    default = 3
}

variable "autoscale-id" {
    type = string
    description = "Name identifier for autoscaling group"
    default = "Prod-Instance"
}

variable "launch_config" {}

variable "subnet_id" {
}
