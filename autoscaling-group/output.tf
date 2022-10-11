output "auto_scaling_group" {
    value = aws_autoscaling_group.prod-autoscaling-group.id
}