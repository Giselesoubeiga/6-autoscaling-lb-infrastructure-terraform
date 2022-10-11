resource "aws_launch_configuration" "prod-lauch-config" {
  name = "prod-launc-config"
  image_id = var.instance-id
  instance_type = var.instance-type
  #user_data = var.user-data
  security_groups = [var.sg_id]
  iam_instance_profile = var.iam_instance_profile
  associate_public_ip_address = true

  root_block_device {
    volume_type = var.volume_type
    volume_size = var.root_volume_size
  }

  ebs_block_device {
    device_name = var.ebs_name
    volume_size = var.root_volume_size
    volume_type = var.volume_type
    iops = var.iops
  }
  lifecycle {
    create_before_destroy = true
  }
}


