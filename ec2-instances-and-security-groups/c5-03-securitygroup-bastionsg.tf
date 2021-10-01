# AWS EC2 security group for public bastion host
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"

  name        = "public_bastion_sg"
  description = "Security group with SSH port open and egress ports open for all"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]

  egress_rules = ["all-all"]

  tags = local.common_tags
}
