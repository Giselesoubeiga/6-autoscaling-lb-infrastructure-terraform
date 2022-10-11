#LOAD BALANCER 

resource "aws_lb" "prod-lb" {
  name = var.resource-name
  internal = false
  load_balancer_type = var.lb-type
  security_groups = [var.sg_id]
  subnets = var.subnet_id
  tags = {
    "Environment" = "Production"
    "Name" = var.resource-name
  }
}

# LOAD BALANCER LISTENER

resource "aws_lb_listener" "prod-lb-listener" {
  load_balancer_arn = aws_lb.prod-lb.id
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.prod-target-group.id
  }
}

#TARGET GROUP

resource "aws_lb_target_group" "prod-target-group" {
  name = var.Prod-name
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id
}

resource "aws_autoscaling_attachment" "prod-autoscale-att" {
  autoscaling_group_name = var.auto_scaling_group
  alb_target_group_arn = aws_lb_target_group.prod-target-group.id 
}
