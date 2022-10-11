resource "aws_subnet" "Public-subnets" {
  
  count = length(var.public-subnet-cidrs)
  vpc_id = var.vpc_id
  cidr_block = element(var.public-subnet-cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
      Name = "Public Subnet ${count.index + 1}"
}
  }

resource "aws_internet_gateway" "igw" {
    
  vpc_id = var.vpc_id

  tags = {
    "Name" = var.igw-tag
    Environment = "Production"
  }
}

