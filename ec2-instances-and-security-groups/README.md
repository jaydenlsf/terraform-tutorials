## Deploy AWS EC2 Instances and Security Groups

### Modules used:

- [VPC](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
- [Security Groups](https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest)
- [EC2 Instances](https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest)

### What is implemented?

- create a VPC with 3-Tier architecture (Web, App, DB)
- create AWS Security Group Terraform module and define HTTP port 80, 22 inbound rule for internet access `0.0.0.0/0`
- create multiple EC2 Instances in VPC Private Subnets
- create an EC2 Instance in VPC Public Subnet (Bastion Host)
- create Elastic IP for Bastion Host EC2 Instance
- create `null_resource` with the following 3 Terraform Provisioners:
  - File Provisioner
  - Remote-exec Provisioner
  - Local-exec Provisioner
