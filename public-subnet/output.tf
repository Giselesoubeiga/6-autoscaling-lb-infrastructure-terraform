output "gateway_id" {
    value = aws_internet_gateway.igw.id
}

output "subnet_id" {
    value = aws_subnet.Public-subnets[*].id
}