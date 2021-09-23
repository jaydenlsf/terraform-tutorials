# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources will be created in"
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair to be associated with EC2 Instance"
  type        = string
  default     = "terraform-key" # Name of the keypair created for EC2
}
