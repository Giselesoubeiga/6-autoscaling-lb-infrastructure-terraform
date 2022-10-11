#Resource to create EC2
resource "aws_instance" "Production-ec2" {
  for_each = var.ami_id
  ami           = each.value
  instance_type = var.instance_type[each.key]
  key_name = var.key-name
  associate_public_ip_address = true
  subnet_id = aws_subnet.Public-subnets[0].id
  vpc_security_group_ids = [aws_security_group.project_sg.id ]
  user_data = var.user-data
  iam_instance_profile = aws_iam_instance_profile.prod-iam-profile.name

  tags = {
    Name = var.Instance-name
    Environment = var.Env
  }
}



