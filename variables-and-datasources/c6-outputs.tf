# EC2 Public IP
output "instance_publicip" {
  description = "EC2 Public IP"
  value       = aws_instance.myec2vm.public_ip
}

# EC2 Public DNS
output "instance_publicdns" {
  description = "EC2 Public DNS"
  value       = aws_instance.myec2vm.public_dns
}
