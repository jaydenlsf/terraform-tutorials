# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources will be created in"
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  type    = string
  default = "terraform-key"
}

# AWS EC2 Instance Type(List)
variable "instance_type_list" {
  type    = list(string)
  default = ["t2.micro", "t2.small", "t2.large"]
}

# AWS EC2 Instance Type(Map)
variable "instance_type_map" {
  type = map(string)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t2.small"
    "prod" = "t2.large"
  }
}
