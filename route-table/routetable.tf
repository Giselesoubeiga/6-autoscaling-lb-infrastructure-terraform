resource "aws_route_table" "project-vpc-rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route
    gateway_id = var.gateway_id
  }

  tags = {
    "Name" = var.rtb-tag
  }

}

resource "aws_route_table_association" "Public-subnet-asso" {
  
 # count = length(var.public-subnet-cidrs)
  subnet_id = var.subnet_id[0]
  route_table_id = aws_route_table.project-vpc-rtb.id
}




