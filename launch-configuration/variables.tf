variable "instance-id" {
    type = string
    description = "ID of the Instance used in the Launch configuration"
    default = "ami-026b57f3c383c2eec"
}

variable "instance-type" {
    type = string
    description = "EC2 Instance type used in Launch configuration"
    default = "t2.micro"
}

variable "volume_type" {
    type = string
    default = "gp2"
}

variable "root_volume_size" {
    type = string
    description = "Volume size in GB"
    default = 10
}

variable "ebs_name" {
    type = string
    description = "Name of attached secondary EBS"
    default = "/dev/xvdh"
}

variable "iops" {
    type = string
    description = "volume IOPS"
    default = 1500
}

variable "sg_id" {}

variable "iam_instance_profile" {}