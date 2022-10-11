variable "public-subnet-cidrs" {

  type        = list(any)
  description = "Public subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.5.0/24"]
}

variable "azs" {
    
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "igw-tag" {
    type = string
    description = "Project internet gateway tag"
    default = "Project-igw"
}

variable "vpc_id" {}