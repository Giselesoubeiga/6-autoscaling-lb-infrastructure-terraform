variable "Env" {
    type = string
    description = "Present working environment"
    default = "Prod"
}

variable "Instance-name" {
    type = string
    default = "Primary-Instance"
}

variable "instance_type" {
  default = ["t2.micro"]
}

variable "ami_id" {
  default = {
    0 = "ami-026b57f3c383c2eec"
  }
}

variable    "key-name" {
    description = "Key name for SSHing into EC2"
    default = "nova-kp"
}

variable "public_key_path" {
    description = "Enter the path to the SSH Public Key to add to AWS"
    default = "/Users/user/Desktop/GitHub Repo/Auto-scaling-project/nova-kp.pem"
}