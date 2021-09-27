# Output - for loop with list
output "for_output_list" {
  description = "for loop with list"
  value       = [for instance in aws_instance.myec2vm : instance.public_dns]
}

# Output - for loop with map
output "for_output_map1" {
  description = "for loop with map"
  value       = { for instance in aws_instance.myec2vm : instance.id => instance.public_dns }
}

# Output - for loop with map (advanced)
output "for_output_map2" {
  description = "for loop with map (advanced)"
  value       = { for c, instance in aws_instance.myec2vm : c => instance.public_dns }
}

# Output latest generalised splat operator - returns the list
output "latest_splat_instance_publicdns" {
  description = "generalised latest splat operator"
  value       = aws_instance.myec2vm[*].public_dns
}
