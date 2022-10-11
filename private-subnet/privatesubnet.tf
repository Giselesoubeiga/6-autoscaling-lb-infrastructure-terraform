resource "aws_subnet" "Private-subnets" {

  count = length(var.private-subnet-cidrs)
  vpc_id = aws_vpc.Project-vpc.id
  cidr_block = element(var.private-subnet-cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "Private Subnet ${count.index + 1}"
  }
  
}

