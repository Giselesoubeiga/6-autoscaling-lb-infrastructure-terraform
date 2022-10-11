variable "sg_ports" {
  type        = list(string)
  description = "list of ingress ports"
  default     = [443, 80, 22]
}

variable "vpc_id" {}