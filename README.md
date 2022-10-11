# autoscaling-lb-infrastructure-terraform
Terraform code to deploy Load balancers, autoscaling group and networking resources

The project creates VPC (Project-VPC) and related public subnets
Creates EC2 autoscaling group for Ec2 instanceS with SSM full access role attached.,
NB. The instance appear under SSM fleet manager 
The project creates auto scaling config and auto scaling group with min capacity 2 desired 2 and Max capacity 3,
Creates an Application Load balancer with target group and ALB listeners.
All the above components are grouped in modules and can be called using modules.
