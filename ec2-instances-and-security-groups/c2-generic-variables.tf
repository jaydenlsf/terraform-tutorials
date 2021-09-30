variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "business_division" {
  description = "Business Division in the large organisation this infrastructure belongs"
  type        = string
  default     = "SAP"
}
