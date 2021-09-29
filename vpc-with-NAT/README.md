## Building a 3-tier AWS VPC

- web
- app
- database

![vpc](https://user-images.githubusercontent.com/54101378/135252964-10728124-4656-49ba-a899-88dd50e03217.jpg)

## Resources:

- Amazon VPC
  - gives you complete control over your virtual networking environment including resource placement, connectivity, and security
- Internet gateway
  - a horizontally scaled, redundant, and highly available VPC component that allows communication between your VPC and the internet
- NAT (Network Address Translation) gateway
  - a NAT gateway is used so that instances in a private subnet can connect to services outside your VPC but external services cannot initiate a connection with those instances
- Elastic IP address
  - a static IPv4 address designed for dynamic cloud computing
  - a public IPv4 address that is reachable from the internet
- Route table
  - contains a set of rules, called routes, that are used to determine where network traffic from your subnet or gatewat is directed
- Public subnet
- Private subnet

## Reference

[VPC with public and private subnets (NAT)](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html)
