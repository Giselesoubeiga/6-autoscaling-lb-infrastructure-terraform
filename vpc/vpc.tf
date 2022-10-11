resource "aws_vpc" "Project-vpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = var.tags
  }
}


