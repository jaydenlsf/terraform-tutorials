## To view the web application:

1. Make sure security group is configured to allow inbound traffic from all IP through HTTP requests
2. Navigate to the public IP to view the web application
3. Navigate to the following endpoints as well:

- http://\<PUBLIC-IP\>/index.html
- http://\<PUBLIC-IP\>/app1/index.html

4. To obtain information about the EC2 instance, navigate to http://<PUBLIC-IP>/app1/metadata.html

## To do

1. Configure VPC and Security Group by using Terraform to allow inbound HTTP traffic from any IP
   - Add a VPC
   - Add a Security Group
