variable "private-subnet-cidrs" {
  type        = list(any)
  description = "Private subnet CIDR values"
  default     = ["10.0.2.0/24"]
}
variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}