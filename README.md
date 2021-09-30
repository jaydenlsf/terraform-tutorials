# A series of Terraform Tutorials

### To SSH onto EC2 Instance

- ssh -i \<PATH TO KEY PAIR\> ec2-user@\<PUBLIC IP\>

If error "bad permission" appears, allow read access to your keypair file:

- chmod 400 \<PATH TO KEY PAIR\>

<hr>

#### Notes

- VPC

  - the networking layer for EC2 instances
  - each VPC creates an isolated virtual network environment in the AWS cloud, dedicated to your AWS account

- Public Subnet

  - a subnet which is open to world for access
  - any instances in a public subnet can be accessed given the public subnet has an Internet Gateway (IGW)

- Private Subnet
  - a subnet which is private and cannot be accessed through internet
  - the instances can only comunicate with each other within a private subnet

**Note**: If you attached an IGW to a private subnet, it becomes a public subnet. A private subnet will not have IGW hence they use Bastion Hosts and Network Address Translation (NAT) to connect to the internet

- Network Address Translation (NAT)

  - acts like a bastion host
  - resides in the public subnet
  - allows private instances outgoing connectivity to the internet, while blocking inbound traffic from the internet

- Internet Gateway (IGW)

  - a VPC component that allows communication between the VPC and the internet

- Bastion Host

  - an instance that sits within your public subnet and are typically accessed using SSH or RDP
  - once remote connectivity has been established with the bastion host, it then acts as a 'jump server', allowing you to use SSH or RDP to login to other instances (within private subnets) deeper within the network

- Elastic IP Address

  - a reserved public IP address that you can assign to any EC2 instance in a particular region, until you choose to release it
  - a static, public IPv4 address
  - can be associated with any instance or network interface

- Route Table
  - contains a set of rules, called routes, that are used to determine where network traffic from your subnet or gateway is directed
  - it tells network packets which way they need to go to get to their destination
