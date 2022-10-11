resource "aws_security_group" "project_sg" {
 name        = "project_sg"
 description = "Ingress for Vault"
 vpc_id = var.vpc_id

 dynamic "ingress" {
   for_each = var.sg_ports
   iterator = port
   content {
     from_port   = port.value
     to_port     = port.value
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
 }

 dynamic "egress" {
   for_each = var.sg_ports
   iterator = port
   content {
     from_port   = port.value
     to_port     = port.value
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
 }
}