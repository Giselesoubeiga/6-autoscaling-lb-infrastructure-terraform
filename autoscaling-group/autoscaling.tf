resource "aws_autoscaling_group" "prod-autoscaling-group" {
  min_size = var.min-size
  max_size = var.max-size
  desired_capacity = var.desired-size
  launch_configuration = var.launch_config
  vpc_zone_identifier = [var.subnet_id[0], var.subnet_id[1]]
  #vpc_zone_identifier = [aws_subnet.Public-subnets[0].id, aws_subnet.Public-subnets[1].id]
  tags = [ {
    Name = var.autoscale-id
  } ]

}
resource "aws_autoscaling_lifecycle_hook" "prod-lifecycle-launching" {
  name = "prod-lifecycle-launching"
  autoscaling_group_name = aws_autoscaling_group.prod-autoscaling-group.id
  default_result = "CONTINUE"
  heartbeat_timeout = 2000
  lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
}