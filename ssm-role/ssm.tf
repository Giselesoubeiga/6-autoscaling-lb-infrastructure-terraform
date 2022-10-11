resource "aws_iam_role" "ec2Role4ssm-role" {
  name = var.role-name
  description = "allow ssm access for ec2-instances"
  assume_role_policy = jsonencode(
    {
    "Version": "2012-10-17",
    "Statement": {
    "Effect": "Allow",
    "Principal": {"Service": "ec2.amazonaws.com"},
    "Action": "sts:AssumeRole"
    }
    }
    ) 

    tags = {
      "Name" = var.role-name
    }
    }

resource "aws_iam_policy_attachment" "ec2Role4ssm-policy" {
  name = var.role-name
  roles = [aws_iam_role.ec2Role4ssm-role.id]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
}

resource "aws_iam_instance_profile" "prod-iam-profile" {
  name = "ec2_profile"
  role = aws_iam_role.ec2Role4ssm-role.name
  
}
