# AWS EC2 security group for private instances
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"

  name        = "private_sg"
  description = "Security group with SSH and HTTP port open for entire VPC block (IPv4) and egress ports open for all"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]

  egress_rules = ["all-all"]

  tags = local.common_tags
}
